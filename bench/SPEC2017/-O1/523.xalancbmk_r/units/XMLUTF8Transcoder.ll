; ModuleID = 'XMLUTF8Transcoder.cpp'
source_filename = "XMLUTF8Transcoder.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLTranscoder" = type { ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_722UTFDataFormatExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722UTFDataFormatExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722UTFDataFormatException7getTypeEv = comdat any

$_ZNK11xercesc_2_722UTFDataFormatException9duplicateEv = comdat any

$_ZN11xercesc_2_720TranscodingExceptionD0Ev = comdat any

$_ZNK11xercesc_2_720TranscodingException7getTypeEv = comdat any

$_ZNK11xercesc_2_720TranscodingException9duplicateEv = comdat any

$_ZTSN11xercesc_2_722UTFDataFormatExceptionE = comdat any

$_ZTIN11xercesc_2_722UTFDataFormatExceptionE = comdat any

$_ZTSN11xercesc_2_720TranscodingExceptionE = comdat any

$_ZTIN11xercesc_2_720TranscodingExceptionE = comdat any

$_ZTVN11xercesc_2_722UTFDataFormatExceptionE = comdat any

$_ZTVN11xercesc_2_720TranscodingExceptionE = comdat any

@_ZTVN11xercesc_2_717XMLUTF8TranscoderE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_717XMLUTF8TranscoderE, ptr @_ZN11xercesc_2_717XMLUTF8TranscoderD2Ev, ptr @_ZN11xercesc_2_717XMLUTF8TranscoderD0Ev, ptr @_ZN11xercesc_2_717XMLUTF8Transcoder13transcodeFromEPKhjPtjRjPh, ptr @_ZN11xercesc_2_717XMLUTF8Transcoder11transcodeToEPKtjPhjRjNS_13XMLTranscoder9UnRepOptsE, ptr @_ZNK11xercesc_2_717XMLUTF8Transcoder14canTranscodeToEj] }, align 8
@_ZN11xercesc_2_7L9gUTFBytesE = internal unnamed_addr constant [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\04\04\04\04\05\05\05\05", align 16
@_ZN11xercesc_2_7L21gUTFByteIndicatorTestE = internal unnamed_addr constant [6 x i8] c"\80\E0\F0\F8\FC\FE", align 1
@_ZN11xercesc_2_7L17gUTFByteIndicatorE = internal unnamed_addr constant [6 x i8] c"\00\C0\E0\F0\F8\FC", align 1
@.str = private unnamed_addr constant [22 x i8] c"XMLUTF8Transcoder.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_722UTFDataFormatExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722UTFDataFormatExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_722UTFDataFormatExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722UTFDataFormatExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_7L11gUTFOffsetsE = internal unnamed_addr constant [6 x i32] [i32 0, i32 12416, i32 925824, i32 63447168, i32 -100130688, i32 -2113396608], align 16
@_ZTSN11xercesc_2_720TranscodingExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720TranscodingExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720TranscodingExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720TranscodingExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_7L14gFirstByteMarkE = internal unnamed_addr constant [7 x i8] c"\00\00\C0\E0\F0\F8\FC", align 1
@_ZTSN11xercesc_2_717XMLUTF8TranscoderE = dso_local constant [35 x i8] c"N11xercesc_2_717XMLUTF8TranscoderE\00", align 1
@_ZTIN11xercesc_2_713XMLTranscoderE = external constant ptr
@_ZTIN11xercesc_2_717XMLUTF8TranscoderE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_717XMLUTF8TranscoderE, ptr @_ZTIN11xercesc_2_713XMLTranscoderE }, align 8
@_ZTVN11xercesc_2_722UTFDataFormatExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722UTFDataFormatExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722UTFDataFormatExceptionD0Ev, ptr @_ZNK11xercesc_2_722UTFDataFormatException7getTypeEv, ptr @_ZNK11xercesc_2_722UTFDataFormatException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgUTFDataFormatException_NameE = external constant [0 x i16], align 2
@.str.1 = private unnamed_addr constant [37 x i8] c"./xercesc/util/XMLUTF8Transcoder.hpp\00", align 1
@_ZTVN11xercesc_2_720TranscodingExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_720TranscodingExceptionD0Ev, ptr @_ZNK11xercesc_2_720TranscodingException7getTypeEv, ptr @_ZNK11xercesc_2_720TranscodingException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni27fgTranscodingException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_717XMLUTF8TranscoderC1EPKtjPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, i32, ptr), ptr @_ZN11xercesc_2_717XMLUTF8TranscoderC2EPKtjPNS_13MemoryManagerE
@_ZN11xercesc_2_717XMLUTF8TranscoderD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_717XMLUTF8TranscoderD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717XMLUTF8TranscoderC2EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 align 2 !prof !39 {
  tail call void @_ZN11xercesc_2_713XMLTranscoderC2EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_717XMLUTF8TranscoderE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !40
  ret void
}

declare void @_ZN11xercesc_2_713XMLTranscoderC2EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_713XMLTranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_717XMLUTF8TranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 !prof !43 {
  tail call void @_ZN11xercesc_2_713XMLTranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #8
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_717XMLUTF8TranscoderD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 !prof !39 {
  tail call void @_ZN11xercesc_2_713XMLTranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_717XMLUTF8Transcoder13transcodeFromEPKhjPtjRjPh(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %5, ptr nocapture noundef writeonly %6) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %8 = alloca [2 x i8], align 1
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
  %19 = alloca [2 x i8], align 1
  %20 = alloca [2 x i8], align 1
  %21 = alloca [2 x i8], align 1
  %22 = alloca [2 x i8], align 1
  %23 = alloca [2 x i8], align 1
  %24 = alloca [2 x i8], align 1
  %25 = alloca [2 x i8], align 1
  %26 = alloca [2 x i8], align 2
  %27 = alloca [2 x i8], align 1
  %28 = alloca [2 x i8], align 1
  %29 = alloca [2 x i8], align 1
  %30 = alloca [2 x i8], align 1
  %31 = alloca [2 x i8], align 1
  %32 = alloca [2 x i8], align 1
  %33 = alloca [2 x i8], align 1
  %34 = alloca [2 x i8], align 1
  %35 = alloca [2 x i8], align 1
  %36 = alloca [2 x i8], align 1
  %37 = icmp ne i32 %2, 0
  %38 = icmp ne i32 %4, 0
  %39 = and i1 %37, %38
  br i1 %39, label %40, label %344, !prof !45

40:                                               ; preds = %7
  %41 = zext i32 %2 to i64
  %42 = getelementptr inbounds i8, ptr %1, i64 %41
  %43 = zext i32 %4 to i64
  %44 = getelementptr inbounds i16, ptr %3, i64 %43
  br label %45

45:                                               ; preds = %327, %40
  %46 = phi ptr [ %3, %40 ], [ %328, %327 ]
  %47 = phi ptr [ %6, %40 ], [ %329, %327 ]
  %48 = phi ptr [ %1, %40 ], [ %330, %327 ]
  %49 = icmp ult ptr %48, %42
  %50 = icmp ult ptr %46, %44
  %51 = select i1 %49, i1 %50, i1 false, !prof !45
  br i1 %51, label %52, label %332, !prof !45

52:                                               ; preds = %45
  %53 = load i8, ptr %48, align 1, !tbaa !46
  %54 = icmp sgt i8 %53, -1
  br i1 %54, label %55, label %74, !prof !45

55:                                               ; preds = %52, %55
  %56 = phi ptr [ %61, %55 ], [ %46, %52 ]
  %57 = phi ptr [ %58, %55 ], [ %48, %52 ]
  %58 = getelementptr inbounds i8, ptr %57, i64 1
  %59 = load i8, ptr %57, align 1, !tbaa !46
  %60 = zext i8 %59 to i16
  %61 = getelementptr inbounds i16, ptr %56, i64 1
  store i16 %60, ptr %56, align 2, !tbaa !48
  %62 = load i8, ptr %58, align 1, !tbaa !46
  %63 = icmp slt i8 %62, 0
  %64 = icmp eq ptr %58, %42
  %65 = or i1 %64, %63
  %66 = icmp eq ptr %61, %44
  %67 = select i1 %65, i1 true, i1 %66, !prof !50
  br i1 %67, label %68, label %55, !prof !51, !llvm.loop !52

68:                                               ; preds = %55
  %69 = ptrtoint ptr %58 to i64
  %70 = ptrtoint ptr %48 to i64
  %71 = sub i64 %69, %70
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %47, i8 1, i64 %71, i1 false), !prof !55
  %72 = getelementptr inbounds i8, ptr %47, i64 %71
  %73 = select i1 %64, i1 true, i1 %66, !prof !56
  br i1 %73, label %332, label %74, !prof !45

74:                                               ; preds = %68, %52
  %75 = phi ptr [ %61, %68 ], [ %46, %52 ]
  %76 = phi ptr [ %72, %68 ], [ %47, %52 ]
  %77 = phi ptr [ %58, %68 ], [ %48, %52 ]
  %78 = load i8, ptr %77, align 1, !tbaa !46
  %79 = zext i8 %78 to i64
  %80 = getelementptr inbounds [256 x i8], ptr @_ZN11xercesc_2_7L9gUTFBytesE, i64 0, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !46
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i8, ptr %77, i64 %82
  %84 = icmp ult ptr %83, %42
  br i1 %84, label %85, label %327

85:                                               ; preds = %74
  %86 = getelementptr inbounds [6 x i8], ptr @_ZN11xercesc_2_7L21gUTFByteIndicatorTestE, i64 0, i64 %82
  %87 = load i8, ptr %86, align 1, !tbaa !46
  %88 = and i8 %87, %78
  %89 = getelementptr inbounds [6 x i8], ptr @_ZN11xercesc_2_7L17gUTFByteIndicatorE, i64 0, i64 %82
  %90 = load i8, ptr %89, align 1, !tbaa !46
  %91 = icmp eq i8 %88, %90
  br i1 %91, label %103, label %92

92:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #8
  store i16 49, ptr %26, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %27) #8
  %93 = add i8 %81, 49
  store i8 %93, ptr %27, align 1, !tbaa !46
  %94 = getelementptr inbounds i8, ptr %27, i64 1
  store i8 0, ptr %94, align 1, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %28) #8
  %95 = load i8, ptr %77, align 1, !tbaa !46
  store i8 %95, ptr %28, align 1, !tbaa !46
  %96 = getelementptr inbounds i8, ptr %28, i64 1
  store i8 0, ptr %96, align 1, !tbaa !46
  %97 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %98 = getelementptr inbounds %"class.xercesc_2_7::XMLTranscoder", ptr %0, i64 0, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_722UTFDataFormatExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %97, ptr noundef nonnull @.str, i32 noundef 193, i32 noundef 110, ptr noundef nonnull %26, ptr noundef nonnull %28, ptr noundef nonnull %27, ptr noundef null, ptr noundef %99)
          to label %100 unwind label %101

100:                                              ; preds = %92
  call void @__cxa_throw(ptr nonnull %97, ptr nonnull @_ZTIN11xercesc_2_722UTFDataFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

101:                                              ; preds = %92
  %102 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %97) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %28) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %27) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #8
  br label %117

103:                                              ; preds = %85
  switch i8 %81, label %271 [
    i8 1, label %104
    i8 2, label %124
    i8 3, label %194
  ]

104:                                              ; preds = %103
  %105 = getelementptr inbounds i8, ptr %77, i64 1
  %106 = load i8, ptr %105, align 1, !tbaa !46
  %107 = and i8 %106, -64
  %108 = icmp eq i8 %107, -128
  br i1 %108, label %121, label %109

109:                                              ; preds = %104
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %23) #8
  store i8 50, ptr %23, align 1, !tbaa !46
  %110 = getelementptr inbounds i8, ptr %23, i64 1
  store i8 0, ptr %110, align 1, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %24) #8
  store i8 50, ptr %24, align 1, !tbaa !46
  %111 = getelementptr inbounds i8, ptr %24, i64 1
  store i8 0, ptr %111, align 1, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %25) #8
  store i8 %106, ptr %25, align 1, !tbaa !46
  %112 = getelementptr inbounds i8, ptr %25, i64 1
  store i8 0, ptr %112, align 1, !tbaa !46
  %113 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %114 = getelementptr inbounds %"class.xercesc_2_7::XMLTranscoder", ptr %0, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_722UTFDataFormatExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %113, ptr noundef nonnull @.str.1, i32 noundef 106, i32 noundef 110, ptr noundef nonnull %24, ptr noundef nonnull %25, ptr noundef nonnull %23, ptr noundef null, ptr noundef %115)
          to label %116 unwind label %119

116:                                              ; preds = %109
  call void @__cxa_throw(ptr nonnull %113, ptr nonnull @_ZTIN11xercesc_2_722UTFDataFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

117:                                              ; preds = %101, %310, %280, %215, %186, %140, %260, %245, %230, %170, %155, %119
  %118 = phi { ptr, i32 } [ %120, %119 ], [ %156, %155 ], [ %171, %170 ], [ %231, %230 ], [ %246, %245 ], [ %261, %260 ], [ %102, %101 ], [ %281, %280 ], [ %216, %215 ], [ %311, %310 ], [ %141, %140 ], [ %187, %186 ]
  resume { ptr, i32 } %118

119:                                              ; preds = %109
  %120 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %113) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %25) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %23) #8
  br label %117

121:                                              ; preds = %104
  %122 = zext i8 %78 to i32
  %123 = shl nuw nsw i32 %122, 6
  br label %282

124:                                              ; preds = %103
  %125 = icmp eq i8 %78, -32
  br i1 %125, label %126, label %142

126:                                              ; preds = %124
  %127 = getelementptr inbounds i8, ptr %77, i64 1
  %128 = load i8, ptr %127, align 1, !tbaa !46
  %129 = icmp ult i8 %128, -96
  br i1 %129, label %130, label %142

130:                                              ; preds = %126
  %131 = getelementptr inbounds i8, ptr %77, i64 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %29) #8
  %132 = load i8, ptr %77, align 1, !tbaa !46
  store i8 %132, ptr %29, align 1, !tbaa !46
  %133 = getelementptr inbounds i8, ptr %29, i64 1
  store i8 0, ptr %133, align 1, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %30) #8
  %134 = load i8, ptr %131, align 1, !tbaa !46
  store i8 %134, ptr %30, align 1, !tbaa !46
  %135 = getelementptr inbounds i8, ptr %30, i64 1
  store i8 0, ptr %135, align 1, !tbaa !46
  %136 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %137 = getelementptr inbounds %"class.xercesc_2_7::XMLTranscoder", ptr %0, i64 0, i32 3
  %138 = load ptr, ptr %137, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_722UTFDataFormatExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %136, ptr noundef nonnull @.str, i32 noundef 267, i32 noundef 112, ptr noundef nonnull %29, ptr noundef nonnull %30, ptr noundef null, ptr noundef null, ptr noundef %138)
          to label %139 unwind label %140

139:                                              ; preds = %130
  call void @__cxa_throw(ptr nonnull %136, ptr nonnull @_ZTIN11xercesc_2_722UTFDataFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

140:                                              ; preds = %130
  %141 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %136) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %30) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %29) #8
  br label %117

142:                                              ; preds = %126, %124
  %143 = getelementptr inbounds i8, ptr %77, i64 1
  %144 = load i8, ptr %143, align 1, !tbaa !46
  %145 = and i8 %144, -64
  %146 = icmp eq i8 %145, -128
  br i1 %146, label %157, label %147

147:                                              ; preds = %142
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #8
  store i8 51, ptr %20, align 1, !tbaa !46
  %148 = getelementptr inbounds i8, ptr %20, i64 1
  store i8 0, ptr %148, align 1, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %21) #8
  store i8 50, ptr %21, align 1, !tbaa !46
  %149 = getelementptr inbounds i8, ptr %21, i64 1
  store i8 0, ptr %149, align 1, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #8
  store i8 %144, ptr %22, align 1, !tbaa !46
  %150 = getelementptr inbounds i8, ptr %22, i64 1
  store i8 0, ptr %150, align 1, !tbaa !46
  %151 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %152 = getelementptr inbounds %"class.xercesc_2_7::XMLTranscoder", ptr %0, i64 0, i32 3
  %153 = load ptr, ptr %152, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_722UTFDataFormatExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %151, ptr noundef nonnull @.str.1, i32 noundef 106, i32 noundef 110, ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %20, ptr noundef null, ptr noundef %153)
          to label %154 unwind label %155

154:                                              ; preds = %147
  call void @__cxa_throw(ptr nonnull %151, ptr nonnull @_ZTIN11xercesc_2_722UTFDataFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

155:                                              ; preds = %147
  %156 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %151) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #8
  br label %117

157:                                              ; preds = %142
  %158 = getelementptr inbounds i8, ptr %77, i64 2
  %159 = load i8, ptr %158, align 1, !tbaa !46
  %160 = and i8 %159, -64
  %161 = icmp eq i8 %160, -128
  br i1 %161, label %172, label %162

162:                                              ; preds = %157
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %17) #8
  store i8 51, ptr %17, align 1, !tbaa !46
  %163 = getelementptr inbounds i8, ptr %17, i64 1
  store i8 0, ptr %163, align 1, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #8
  store i8 51, ptr %18, align 1, !tbaa !46
  %164 = getelementptr inbounds i8, ptr %18, i64 1
  store i8 0, ptr %164, align 1, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #8
  store i8 %159, ptr %19, align 1, !tbaa !46
  %165 = getelementptr inbounds i8, ptr %19, i64 1
  store i8 0, ptr %165, align 1, !tbaa !46
  %166 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %167 = getelementptr inbounds %"class.xercesc_2_7::XMLTranscoder", ptr %0, i64 0, i32 3
  %168 = load ptr, ptr %167, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_722UTFDataFormatExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %166, ptr noundef nonnull @.str.1, i32 noundef 106, i32 noundef 110, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %17, ptr noundef null, ptr noundef %168)
          to label %169 unwind label %170

169:                                              ; preds = %162
  call void @__cxa_throw(ptr nonnull %166, ptr nonnull @_ZTIN11xercesc_2_722UTFDataFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

170:                                              ; preds = %162
  %171 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %166) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #8
  br label %117

172:                                              ; preds = %157
  %173 = icmp eq i8 %78, -19
  %174 = icmp ugt i8 %144, -97
  %175 = and i1 %173, %174
  br i1 %175, label %176, label %188

176:                                              ; preds = %172
  %177 = getelementptr inbounds i8, ptr %77, i64 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %31) #8
  %178 = load i8, ptr %77, align 1, !tbaa !46
  store i8 %178, ptr %31, align 1, !tbaa !46
  %179 = getelementptr inbounds i8, ptr %31, i64 1
  store i8 0, ptr %179, align 1, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %32) #8
  %180 = load i8, ptr %177, align 1, !tbaa !46
  store i8 %180, ptr %32, align 1, !tbaa !46
  %181 = getelementptr inbounds i8, ptr %32, i64 1
  store i8 0, ptr %181, align 1, !tbaa !46
  %182 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %183 = getelementptr inbounds %"class.xercesc_2_7::XMLTranscoder", ptr %0, i64 0, i32 3
  %184 = load ptr, ptr %183, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_722UTFDataFormatExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %182, ptr noundef nonnull @.str, i32 noundef 305, i32 noundef 113, ptr noundef nonnull %31, ptr noundef nonnull %32, ptr noundef null, ptr noundef null, ptr noundef %184)
          to label %185 unwind label %186

185:                                              ; preds = %176
  call void @__cxa_throw(ptr nonnull %182, ptr nonnull @_ZTIN11xercesc_2_722UTFDataFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

186:                                              ; preds = %176
  %187 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %182) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %32) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %31) #8
  br label %117

188:                                              ; preds = %172
  %189 = zext i8 %78 to i32
  %190 = zext i8 %144 to i32
  %191 = shl nuw nsw i32 %189, 12
  %192 = shl nuw nsw i32 %190, 6
  %193 = add nuw nsw i32 %192, %191
  br label %282

194:                                              ; preds = %103
  switch i8 %78, label %217 [
    i8 -16, label %195
    i8 -12, label %201
  ]

195:                                              ; preds = %194
  %196 = getelementptr inbounds i8, ptr %77, i64 1
  %197 = load i8, ptr %196, align 1, !tbaa !46
  %198 = icmp ult i8 %197, -112
  br i1 %198, label %205, label %199

199:                                              ; preds = %195
  %200 = icmp eq i8 %78, -12
  br i1 %200, label %201, label %217

201:                                              ; preds = %194, %199
  %202 = getelementptr inbounds i8, ptr %77, i64 1
  %203 = load i8, ptr %202, align 1, !tbaa !46
  %204 = icmp ugt i8 %203, -113
  br i1 %204, label %205, label %217

205:                                              ; preds = %201, %195
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %33) #8
  %206 = load i8, ptr %77, align 1, !tbaa !46
  store i8 %206, ptr %33, align 1, !tbaa !46
  %207 = getelementptr inbounds i8, ptr %33, i64 1
  store i8 0, ptr %207, align 1, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %34) #8
  %208 = getelementptr inbounds i8, ptr %77, i64 1
  %209 = load i8, ptr %208, align 1, !tbaa !46
  store i8 %209, ptr %34, align 1, !tbaa !46
  %210 = getelementptr inbounds i8, ptr %34, i64 1
  store i8 0, ptr %210, align 1, !tbaa !46
  %211 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %212 = getelementptr inbounds %"class.xercesc_2_7::XMLTranscoder", ptr %0, i64 0, i32 3
  %213 = load ptr, ptr %212, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_722UTFDataFormatExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %211, ptr noundef nonnull @.str, i32 noundef 331, i32 noundef 114, ptr noundef nonnull %33, ptr noundef nonnull %34, ptr noundef null, ptr noundef null, ptr noundef %213)
          to label %214 unwind label %215

214:                                              ; preds = %205
  call void @__cxa_throw(ptr nonnull %211, ptr nonnull @_ZTIN11xercesc_2_722UTFDataFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

215:                                              ; preds = %205
  %216 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %211) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %34) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %33) #8
  br label %117

217:                                              ; preds = %194, %201, %199
  %218 = getelementptr inbounds i8, ptr %77, i64 1
  %219 = load i8, ptr %218, align 1, !tbaa !46
  %220 = and i8 %219, -64
  %221 = icmp eq i8 %220, -128
  br i1 %221, label %232, label %222

222:                                              ; preds = %217
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #8
  store i8 52, ptr %14, align 1, !tbaa !46
  %223 = getelementptr inbounds i8, ptr %14, i64 1
  store i8 0, ptr %223, align 1, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #8
  store i8 50, ptr %15, align 1, !tbaa !46
  %224 = getelementptr inbounds i8, ptr %15, i64 1
  store i8 0, ptr %224, align 1, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #8
  store i8 %219, ptr %16, align 1, !tbaa !46
  %225 = getelementptr inbounds i8, ptr %16, i64 1
  store i8 0, ptr %225, align 1, !tbaa !46
  %226 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %227 = getelementptr inbounds %"class.xercesc_2_7::XMLTranscoder", ptr %0, i64 0, i32 3
  %228 = load ptr, ptr %227, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_722UTFDataFormatExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %226, ptr noundef nonnull @.str.1, i32 noundef 106, i32 noundef 110, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %14, ptr noundef null, ptr noundef %228)
          to label %229 unwind label %230

229:                                              ; preds = %222
  call void @__cxa_throw(ptr nonnull %226, ptr nonnull @_ZTIN11xercesc_2_722UTFDataFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

230:                                              ; preds = %222
  %231 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %226) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #8
  br label %117

232:                                              ; preds = %217
  %233 = getelementptr inbounds i8, ptr %77, i64 2
  %234 = load i8, ptr %233, align 1, !tbaa !46
  %235 = and i8 %234, -64
  %236 = icmp eq i8 %235, -128
  br i1 %236, label %247, label %237

237:                                              ; preds = %232
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #8
  store i8 52, ptr %11, align 1, !tbaa !46
  %238 = getelementptr inbounds i8, ptr %11, i64 1
  store i8 0, ptr %238, align 1, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #8
  store i8 51, ptr %12, align 1, !tbaa !46
  %239 = getelementptr inbounds i8, ptr %12, i64 1
  store i8 0, ptr %239, align 1, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #8
  store i8 %234, ptr %13, align 1, !tbaa !46
  %240 = getelementptr inbounds i8, ptr %13, i64 1
  store i8 0, ptr %240, align 1, !tbaa !46
  %241 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %242 = getelementptr inbounds %"class.xercesc_2_7::XMLTranscoder", ptr %0, i64 0, i32 3
  %243 = load ptr, ptr %242, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_722UTFDataFormatExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %241, ptr noundef nonnull @.str.1, i32 noundef 106, i32 noundef 110, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %11, ptr noundef null, ptr noundef %243)
          to label %244 unwind label %245

244:                                              ; preds = %237
  call void @__cxa_throw(ptr nonnull %241, ptr nonnull @_ZTIN11xercesc_2_722UTFDataFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

245:                                              ; preds = %237
  %246 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %241) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #8
  br label %117

247:                                              ; preds = %232
  %248 = getelementptr inbounds i8, ptr %77, i64 3
  %249 = load i8, ptr %248, align 1, !tbaa !46
  %250 = and i8 %249, -64
  %251 = icmp eq i8 %250, -128
  br i1 %251, label %262, label %252

252:                                              ; preds = %247
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #8
  store i8 52, ptr %8, align 1, !tbaa !46
  %253 = getelementptr inbounds i8, ptr %8, i64 1
  store i8 0, ptr %253, align 1, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #8
  store i8 52, ptr %9, align 1, !tbaa !46
  %254 = getelementptr inbounds i8, ptr %9, i64 1
  store i8 0, ptr %254, align 1, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #8
  store i8 %249, ptr %10, align 1, !tbaa !46
  %255 = getelementptr inbounds i8, ptr %10, i64 1
  store i8 0, ptr %255, align 1, !tbaa !46
  %256 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %257 = getelementptr inbounds %"class.xercesc_2_7::XMLTranscoder", ptr %0, i64 0, i32 3
  %258 = load ptr, ptr %257, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_722UTFDataFormatExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %256, ptr noundef nonnull @.str.1, i32 noundef 106, i32 noundef 110, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef null, ptr noundef %258)
          to label %259 unwind label %260

259:                                              ; preds = %252
  call void @__cxa_throw(ptr nonnull %256, ptr nonnull @_ZTIN11xercesc_2_722UTFDataFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

260:                                              ; preds = %252
  %261 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %256) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #8
  br label %117

262:                                              ; preds = %247
  %263 = zext i8 %78 to i32
  %264 = zext i8 %219 to i32
  %265 = shl nuw nsw i32 %263, 12
  %266 = shl nuw nsw i32 %264, 6
  %267 = add nuw nsw i32 %266, %265
  %268 = zext i8 %234 to i32
  %269 = add nuw nsw i32 %267, %268
  %270 = shl nuw nsw i32 %269, 6
  br label %282

271:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %35) #8
  %272 = add i8 %81, 49
  store i8 %272, ptr %35, align 1, !tbaa !46
  %273 = getelementptr inbounds i8, ptr %35, i64 1
  store i8 0, ptr %273, align 1, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %36) #8
  %274 = load i8, ptr %77, align 1, !tbaa !46
  store i8 %274, ptr %36, align 1, !tbaa !46
  %275 = getelementptr inbounds i8, ptr %36, i64 1
  store i8 0, ptr %275, align 1, !tbaa !46
  %276 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %277 = getelementptr inbounds %"class.xercesc_2_7::XMLTranscoder", ptr %0, i64 0, i32 3
  %278 = load ptr, ptr %277, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_722UTFDataFormatExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %276, ptr noundef nonnull @.str, i32 noundef 364, i32 noundef 115, ptr noundef nonnull %36, ptr noundef nonnull %35, ptr noundef null, ptr noundef null, ptr noundef %278)
          to label %279 unwind label %280

279:                                              ; preds = %271
  call void @__cxa_throw(ptr nonnull %276, ptr nonnull @_ZTIN11xercesc_2_722UTFDataFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

280:                                              ; preds = %271
  %281 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %276) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %36) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %35) #8
  br label %117

282:                                              ; preds = %262, %188, %121
  %283 = phi i64 [ 4, %262 ], [ 3, %188 ], [ 2, %121 ]
  %284 = phi i8 [ %249, %262 ], [ %159, %188 ], [ %106, %121 ]
  %285 = phi i32 [ %270, %262 ], [ %193, %188 ], [ %123, %121 ]
  %286 = getelementptr inbounds i8, ptr %77, i64 %283
  %287 = zext i8 %284 to i32
  %288 = add nuw nsw i32 %285, %287
  %289 = getelementptr inbounds [6 x i32], ptr @_ZN11xercesc_2_7L11gUTFOffsetsE, i64 0, i64 %82
  %290 = load i32, ptr %289, align 4, !tbaa !61
  %291 = sub i32 %288, %290
  %292 = icmp ult i32 %291, 65536
  br i1 %292, label %293, label %298

293:                                              ; preds = %282
  %294 = add i8 %81, 1
  %295 = getelementptr inbounds i8, ptr %76, i64 1
  store i8 %294, ptr %76, align 1, !tbaa !46
  %296 = trunc i32 %291 to i16
  %297 = getelementptr inbounds i16, ptr %75, i64 1
  store i16 %296, ptr %75, align 2, !tbaa !48
  br label %327

298:                                              ; preds = %282
  %299 = icmp ugt i32 %291, 1114111
  br i1 %299, label %300, label %312

300:                                              ; preds = %298
  %301 = ptrtoint ptr %3 to i64
  %302 = ptrtoint ptr %75 to i64
  %303 = sub i64 %302, %301
  %304 = icmp sgt i64 %303, 64
  br i1 %304, label %327, label %305

305:                                              ; preds = %300
  %306 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %307 = getelementptr inbounds %"class.xercesc_2_7::XMLTranscoder", ptr %0, i64 0, i32 3
  %308 = load ptr, ptr %307, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %306, ptr noundef nonnull @.str, i32 noundef 398, i32 noundef 95, ptr noundef %308)
          to label %309 unwind label %310

309:                                              ; preds = %305
  tail call void @__cxa_throw(ptr nonnull %306, ptr nonnull @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

310:                                              ; preds = %305
  %311 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %306) #8
  br label %117

312:                                              ; preds = %298
  %313 = getelementptr inbounds i16, ptr %75, i64 1
  %314 = icmp ult ptr %313, %44
  br i1 %314, label %315, label %327

315:                                              ; preds = %312
  %316 = add nuw nsw i32 %291, 67043328
  %317 = add i8 %81, 1
  %318 = getelementptr inbounds i8, ptr %76, i64 1
  store i8 %317, ptr %76, align 1, !tbaa !46
  %319 = lshr i32 %316, 10
  %320 = trunc i32 %319 to i16
  %321 = add i16 %320, -10240
  store i16 %321, ptr %75, align 2, !tbaa !48
  %322 = getelementptr inbounds i8, ptr %76, i64 2
  store i8 0, ptr %318, align 1, !tbaa !46
  %323 = trunc i32 %291 to i16
  %324 = and i16 %323, 1023
  %325 = or disjoint i16 %324, -9216
  %326 = getelementptr inbounds i16, ptr %75, i64 2
  store i16 %325, ptr %313, align 2, !tbaa !48
  br label %327

327:                                              ; preds = %300, %312, %315, %293, %74
  %328 = phi ptr [ %75, %74 ], [ %75, %300 ], [ %75, %312 ], [ %326, %315 ], [ %297, %293 ]
  %329 = phi ptr [ %76, %74 ], [ %76, %300 ], [ %76, %312 ], [ %322, %315 ], [ %295, %293 ]
  %330 = phi ptr [ %77, %74 ], [ %286, %300 ], [ %286, %312 ], [ %286, %315 ], [ %286, %293 ]
  %331 = phi i1 [ false, %74 ], [ false, %300 ], [ false, %312 ], [ true, %315 ], [ true, %293 ]
  br i1 %331, label %45, label %332

332:                                              ; preds = %327, %68, %45
  %333 = phi ptr [ %46, %45 ], [ %61, %68 ], [ %328, %327 ]
  %334 = phi ptr [ %48, %45 ], [ %58, %68 ], [ %330, %327 ]
  %335 = ptrtoint ptr %334 to i64
  %336 = ptrtoint ptr %1 to i64
  %337 = sub i64 %335, %336
  %338 = trunc i64 %337 to i32
  store i32 %338, ptr %5, align 4, !tbaa !61
  %339 = ptrtoint ptr %333 to i64
  %340 = ptrtoint ptr %3 to i64
  %341 = sub i64 %339, %340
  %342 = lshr exact i64 %341, 1
  %343 = trunc i64 %342 to i32
  br label %344

344:                                              ; preds = %7, %332
  %345 = phi i32 [ %343, %332 ], [ 0, %7 ]
  ret i32 %345
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UTFDataFormatExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722UTFDataFormatExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !40
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKcS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  resume { ptr, i32 } %12
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720TranscodingExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !40
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_717XMLUTF8Transcoder11transcodeToEPKtjPhjRjNS_13XMLTranscoder9UnRepOptsE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %5, i32 noundef %6) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %8 = alloca [17 x i16], align 16
  %9 = icmp ne i32 %2, 0
  %10 = icmp ne i32 %4, 0
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %115, !prof !63

12:                                               ; preds = %7
  %13 = zext i32 %2 to i64
  %14 = getelementptr inbounds i16, ptr %1, i64 %13
  %15 = zext i32 %4 to i64
  %16 = getelementptr inbounds i8, ptr %3, i64 %15
  br label %17

17:                                               ; preds = %99, %12
  %18 = phi ptr [ %3, %12 ], [ %100, %99 ]
  %19 = phi ptr [ %1, %12 ], [ %102, %99 ]
  %20 = icmp ult ptr %19, %14
  br i1 %20, label %21, label %103, !prof !64

21:                                               ; preds = %17
  %22 = load i16, ptr %19, align 2, !tbaa !48
  %23 = zext i16 %22 to i32
  %24 = and i16 %22, -1024
  %25 = icmp eq i16 %24, -10240
  br i1 %25, label %26, label %35, !prof !65

26:                                               ; preds = %21
  %27 = getelementptr inbounds i16, ptr %19, i64 1
  %28 = icmp ult ptr %27, %14
  br i1 %28, label %29, label %99

29:                                               ; preds = %26
  %30 = shl nuw nsw i32 %23, 10
  %31 = load i16, ptr %27, align 2, !tbaa !48
  %32 = zext i16 %31 to i32
  %33 = add nsw i32 %30, -56613888
  %34 = add nuw nsw i32 %33, %32
  br label %35

35:                                               ; preds = %29, %21
  %36 = phi i32 [ %34, %29 ], [ %23, %21 ]
  %37 = phi i64 [ 2, %29 ], [ 1, %21 ]
  %38 = icmp ult i32 %36, 128
  br i1 %38, label %60, label %39, !prof !66

39:                                               ; preds = %35
  %40 = icmp ult i32 %36, 2048
  br i1 %40, label %60, label %41

41:                                               ; preds = %39
  %42 = icmp ult i32 %36, 65536
  br i1 %42, label %60, label %43

43:                                               ; preds = %41
  %44 = icmp ult i32 %36, 1114112
  br i1 %44, label %60, label %45

45:                                               ; preds = %43
  %46 = icmp eq i32 %6, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %8) #8
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLTranscoder", ptr %0, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !57
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %36, ptr noundef nonnull %8, i32 noundef 16, i32 noundef 16, ptr noundef %49)
  %50 = call ptr @__cxa_allocate_exception(i64 48) #8
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLTranscoder", ptr %0, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !67
  %53 = load ptr, ptr %48, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %50, ptr noundef nonnull @.str, i32 noundef 506, i32 noundef 92, ptr noundef nonnull %8, ptr noundef %52, ptr noundef null, ptr noundef null, ptr noundef %53)
          to label %54 unwind label %55

54:                                               ; preds = %47
  call void @__cxa_throw(ptr nonnull %50, ptr nonnull @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

55:                                               ; preds = %47
  %56 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %50) #8
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %8) #8
  resume { ptr, i32 } %56

57:                                               ; preds = %45
  %58 = getelementptr inbounds i8, ptr %18, i64 1
  store i8 32, ptr %18, align 1, !tbaa !46
  %59 = getelementptr inbounds i16, ptr %19, i64 %37
  br label %99, !llvm.loop !68

60:                                               ; preds = %43, %41, %39, %35
  %61 = phi i32 [ 1, %35 ], [ 2, %39 ], [ 3, %41 ], [ 4, %43 ]
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds i8, ptr %18, i64 %62
  %64 = icmp ugt ptr %63, %16
  br i1 %64, label %99, label %65, !prof !65

65:                                               ; preds = %60
  %66 = getelementptr inbounds i16, ptr %19, i64 %37
  switch i32 %61, label %98 [
    i32 1, label %89
    i32 2, label %81
    i32 4, label %67
    i32 3, label %73
  ], !prof !69

67:                                               ; preds = %65
  %68 = trunc i32 %36 to i8
  %69 = and i8 %68, 63
  %70 = or disjoint i8 %69, -128
  %71 = getelementptr inbounds i8, ptr %63, i64 -1
  store i8 %70, ptr %71, align 1, !tbaa !46
  %72 = lshr i32 %36, 6
  br label %73

73:                                               ; preds = %65, %67
  %74 = phi ptr [ %63, %65 ], [ %71, %67 ]
  %75 = phi i32 [ %36, %65 ], [ %72, %67 ]
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 63
  %78 = or disjoint i8 %77, -128
  %79 = getelementptr inbounds i8, ptr %74, i64 -1
  store i8 %78, ptr %79, align 1, !tbaa !46
  %80 = lshr i32 %75, 6
  br label %81

81:                                               ; preds = %65, %73
  %82 = phi ptr [ %63, %65 ], [ %79, %73 ]
  %83 = phi i32 [ %36, %65 ], [ %80, %73 ]
  %84 = trunc i32 %83 to i8
  %85 = and i8 %84, 63
  %86 = or disjoint i8 %85, -128
  %87 = getelementptr inbounds i8, ptr %82, i64 -1
  store i8 %86, ptr %87, align 1, !tbaa !46
  %88 = lshr i32 %83, 6
  br label %89

89:                                               ; preds = %65, %81
  %90 = phi ptr [ %63, %65 ], [ %87, %81 ]
  %91 = phi i32 [ %36, %65 ], [ %88, %81 ]
  %92 = getelementptr inbounds [7 x i8], ptr @_ZN11xercesc_2_7L14gFirstByteMarkE, i64 0, i64 %62
  %93 = load i8, ptr %92, align 1, !tbaa !46
  %94 = trunc i32 %91 to i8
  %95 = or i8 %93, %94
  %96 = getelementptr inbounds i8, ptr %90, i64 -1
  store i8 %95, ptr %96, align 1, !tbaa !46
  %97 = getelementptr inbounds i8, ptr %96, i64 %62
  br label %99

98:                                               ; preds = %65
  unreachable

99:                                               ; preds = %57, %89, %60, %26
  %100 = phi ptr [ %18, %26 ], [ %97, %89 ], [ %58, %57 ], [ %18, %60 ]
  %101 = phi i1 [ true, %26 ], [ false, %89 ], [ false, %57 ], [ true, %60 ]
  %102 = phi ptr [ %19, %26 ], [ %66, %89 ], [ %59, %57 ], [ %19, %60 ]
  br i1 %101, label %103, label %17, !prof !65

103:                                              ; preds = %99, %17
  %104 = phi ptr [ %18, %17 ], [ %100, %99 ]
  %105 = phi ptr [ %19, %17 ], [ %102, %99 ]
  %106 = ptrtoint ptr %105 to i64
  %107 = ptrtoint ptr %1 to i64
  %108 = sub i64 %106, %107
  %109 = lshr exact i64 %108, 1
  %110 = trunc i64 %109 to i32
  store i32 %110, ptr %5, align 4, !tbaa !61
  %111 = ptrtoint ptr %104 to i64
  %112 = ptrtoint ptr %3 to i64
  %113 = sub i64 %111, %112
  %114 = trunc i64 %113 to i32
  br label %115

115:                                              ; preds = %7, %103
  %116 = phi i32 [ %114, %103 ], [ 0, %7 ]
  ret i32 %116
}

declare void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720TranscodingExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !40
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  resume { ptr, i32 } %12
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717XMLUTF8Transcoder14canTranscodeToEj(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #7 align 2 !prof !43 {
  %3 = icmp ult i32 %1, 1114112
  ret i1 %3
}

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKcS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UTFDataFormatExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !43 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722UTFDataFormatException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !43 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgUTFDataFormatException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722UTFDataFormatException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722UTFDataFormatExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !40
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #8
  resume { ptr, i32 } %7
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720TranscodingExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !43 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720TranscodingException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !43 {
  ret ptr @_ZN11xercesc_2_76XMLUni27fgTranscodingException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720TranscodingException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720TranscodingExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !40
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #8
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!38}

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
!34 = distinct !{!35, !36, !37}
!35 = !{ptr @_ZN11xercesc_2_717XMLUTF8TranscoderC2EPKtjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XMLTranscoderC2EPKtjPNS_13MemoryManagerE, i64 5}
!36 = !{ptr @_ZN11xercesc_2_717XMLUTF8TranscoderD0Ev, ptr @_ZN11xercesc_2_713XMLTranscoderD2Ev, i64 5}
!37 = !{ptr @_ZN11xercesc_2_717XMLUTF8TranscoderD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 5}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = !{!"function_entry_count", i64 5}
!40 = !{!41, !41, i64 0}
!41 = !{!"vtable pointer", !42, i64 0}
!42 = !{!"Simple C++ TBAA"}
!43 = !{!"function_entry_count", i64 0}
!44 = !{!"function_entry_count", i64 3544}
!45 = !{!"branch_weights", i32 3544, i32 0}
!46 = !{!47, !47, i64 0}
!47 = !{!"omnipotent char", !42, i64 0}
!48 = !{!49, !49, i64 0}
!49 = !{!"short", !47, i64 0}
!50 = !{!"branch_weights", i32 983, i32 58044267}
!51 = !{!"branch_weights", i32 3544, i32 58041706}
!52 = distinct !{!52, !53, !54}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = !{!"VP", i32 1, i64 3544, i64 513, i64 3544}
!56 = !{!"branch_weights", i32 983, i32 2561}
!57 = !{!58, !60, i64 24}
!58 = !{!"_ZTSN11xercesc_2_713XMLTranscoderE", !59, i64 8, !60, i64 16, !60, i64 24}
!59 = !{!"int", !47, i64 0}
!60 = !{!"any pointer", !47, i64 0}
!61 = !{!59, !59, i64 0}
!62 = !{!"function_entry_count", i64 122390}
!63 = !{!"branch_weights", i32 122390, i32 0}
!64 = !{!"branch_weights", i32 62663220, i32 122390}
!65 = !{!"branch_weights", i32 0, i32 62663220}
!66 = !{!"branch_weights", i32 62663220, i32 0}
!67 = !{!58, !60, i64 16}
!68 = distinct !{!68, !53, !54}
!69 = !{!"branch_weights", i32 0, i32 62663220, i32 0, i32 0, i32 0}
!70 = !{!71, !60, i64 40}
!71 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !72, i64 8, !60, i64 16, !59, i64 24, !60, i64 32, !60, i64 40}
!72 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !47, i64 0}
