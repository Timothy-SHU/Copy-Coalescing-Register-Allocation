; ModuleID = 'XalanOutputStream.cpp'
source_filename = "XalanOutputStream.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanOutputStream" = type { ptr, i32, ptr, i32, %"class.xalanc_1_10::XalanVector", %"class.xalanc_1_10::XalanDOMString", i8, i8, %"class.xalanc_1_10::XalanVector.0" }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanOutputStream::UnsupportedEncodingException" = type { %"class.xalanc_1_10::XalanOutputStream::XalanOutputStreamException", %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::XalanOutputStream::XalanOutputStreamException" = type { %"class.xalanc_1_10::XSLException" }
%"class.xalanc_1_10::XSLException" = type { ptr, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", i64, i64 }
%"class.xalanc_1_10::XalanOutputStream::TranscoderInternalFailureException" = type { %"class.xalanc_1_10::XalanOutputStream::XalanOutputStreamException", %"class.xalanc_1_10::XalanDOMString" }

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$_ZNK11xalanc_1_1017XalanOutputStream26XalanOutputStreamException7getTypeEv = comdat any

$_ZNK11xalanc_1_1017XalanOutputStream28UnsupportedEncodingException7getTypeEv = comdat any

$_ZNK11xalanc_1_1017XalanOutputStream24UnknownEncodingException7getTypeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc = comdat any

@_ZN11xalanc_1_1017XalanOutputStream10s_nlStringE = dso_local constant [2 x i16] [i16 10, i16 0], align 2
@_ZN11xalanc_1_1017XalanOutputStream12s_nlCRStringE = dso_local local_unnamed_addr constant [3 x i16] [i16 13, i16 10, i16 0], align 2
@_ZN11xalanc_1_1017XalanOutputStream16s_nlStringLengthE = dso_local local_unnamed_addr constant i32 1, align 4
@_ZN11xalanc_1_1017XalanOutputStream18s_nlCRStringLengthE = dso_local local_unnamed_addr constant i32 2, align 4
@_ZTVN11xalanc_1_1017XalanOutputStreamE = dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1017XalanOutputStreamE, ptr @_ZN11xalanc_1_1017XalanOutputStreamD2Ev, ptr @_ZN11xalanc_1_1017XalanOutputStreamD0Ev, ptr @_ZN11xalanc_1_1017XalanOutputStream7newlineEv, ptr @_ZNK11xalanc_1_1017XalanOutputStream16getNewlineStringEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1017XalanOutputStream20TranscodingExceptionE = dso_local constant [57 x i8] c"N11xalanc_1_1017XalanOutputStream20TranscodingExceptionE\00", align 1
@_ZTSN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionE = dso_local constant [63 x i8] c"N11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionE\00", align 1
@_ZTIN11xalanc_1_1012XSLExceptionE = external constant ptr
@_ZTIN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionE, ptr @_ZTIN11xalanc_1_1012XSLExceptionE }, align 8
@_ZTIN11xalanc_1_1017XalanOutputStream20TranscodingExceptionE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1017XalanOutputStream20TranscodingExceptionE, ptr @_ZTIN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionE }, align 8
@_ZTSN11xalanc_1_1017XalanOutputStream28UnsupportedEncodingExceptionE = dso_local constant [65 x i8] c"N11xalanc_1_1017XalanOutputStream28UnsupportedEncodingExceptionE\00", align 1
@_ZTIN11xalanc_1_1017XalanOutputStream28UnsupportedEncodingExceptionE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1017XalanOutputStream28UnsupportedEncodingExceptionE, ptr @_ZTIN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionE }, align 8
@_ZTSN11xalanc_1_1017XalanOutputStream34TranscoderInternalFailureExceptionE = dso_local constant [71 x i8] c"N11xalanc_1_1017XalanOutputStream34TranscoderInternalFailureExceptionE\00", align 1
@_ZTIN11xalanc_1_1017XalanOutputStream34TranscoderInternalFailureExceptionE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1017XalanOutputStream34TranscoderInternalFailureExceptionE, ptr @_ZTIN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionE }, align 8
@_ZN11xalanc_1_1017XalanOutputStream26XalanOutputStreamException6m_typeE = dso_local constant [31 x i16] [i16 88, i16 97, i16 108, i16 97, i16 110, i16 70, i16 105, i16 108, i16 101, i16 79, i16 117, i16 116, i16 112, i16 117, i16 116, i16 83, i16 116, i16 114, i16 101, i16 97, i16 109, i16 69, i16 120, i16 99, i16 101, i16 112, i16 116, i16 105, i16 111, i16 110, i16 0], align 16
@_ZTVN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionE, ptr @_ZN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionD2Ev, ptr @_ZN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionD0Ev, ptr @_ZNK11xalanc_1_1017XalanOutputStream26XalanOutputStreamException7getTypeEv] }, align 8
@_ZN11xalanc_1_1017XalanOutputStream24UnknownEncodingException6m_typeE = dso_local constant [25 x i16] [i16 85, i16 110, i16 107, i16 110, i16 111, i16 119, i16 110, i16 69, i16 110, i16 99, i16 111, i16 100, i16 105, i16 110, i16 103, i16 69, i16 120, i16 99, i16 101, i16 112, i16 116, i16 105, i16 111, i16 110, i16 0], align 16
@_ZTVN11xalanc_1_1017XalanOutputStream24UnknownEncodingExceptionE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1017XalanOutputStream24UnknownEncodingExceptionE, ptr @_ZN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionD2Ev, ptr @_ZN11xalanc_1_1017XalanOutputStream24UnknownEncodingExceptionD0Ev, ptr @_ZNK11xalanc_1_1017XalanOutputStream24UnknownEncodingException7getTypeEv] }, align 8
@_ZN11xalanc_1_1017XalanOutputStream28UnsupportedEncodingException6m_typeE = dso_local constant [29 x i16] [i16 85, i16 110, i16 115, i16 117, i16 112, i16 112, i16 111, i16 114, i16 116, i16 101, i16 100, i16 69, i16 110, i16 99, i16 111, i16 100, i16 105, i16 110, i16 103, i16 69, i16 120, i16 99, i16 101, i16 112, i16 116, i16 105, i16 111, i16 110, i16 0], align 16
@_ZTVN11xalanc_1_1017XalanOutputStream28UnsupportedEncodingExceptionE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1017XalanOutputStream28UnsupportedEncodingExceptionE, ptr @_ZN11xalanc_1_1017XalanOutputStream28UnsupportedEncodingExceptionD2Ev, ptr @_ZN11xalanc_1_1017XalanOutputStream28UnsupportedEncodingExceptionD0Ev, ptr @_ZNK11xalanc_1_1017XalanOutputStream28UnsupportedEncodingException7getTypeEv] }, align 8
@_ZTVN11xalanc_1_1017XalanOutputStream34TranscoderInternalFailureExceptionE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1017XalanOutputStream34TranscoderInternalFailureExceptionE, ptr @_ZN11xalanc_1_1017XalanOutputStream34TranscoderInternalFailureExceptionD2Ev, ptr @_ZN11xalanc_1_1017XalanOutputStream34TranscoderInternalFailureExceptionD0Ev, ptr @_ZNK11xalanc_1_1017XalanOutputStream26XalanOutputStreamException7getTypeEv] }, align 8
@_ZTVN11xalanc_1_1017XalanOutputStream20TranscodingExceptionE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1017XalanOutputStream20TranscodingExceptionE, ptr @_ZN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionD2Ev, ptr @_ZN11xalanc_1_1017XalanOutputStream20TranscodingExceptionD0Ev, ptr @_ZNK11xalanc_1_1017XalanOutputStream26XalanOutputStreamException7getTypeEv] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1017XalanOutputStreamE = dso_local constant [35 x i8] c"N11xalanc_1_1017XalanOutputStreamE\00", align 1
@_ZTIN11xalanc_1_1017XalanOutputStreamE = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1017XalanOutputStreamE }, align 8
@_ZTSN11xalanc_1_1017XalanOutputStream24UnknownEncodingExceptionE = dso_local constant [61 x i8] c"N11xalanc_1_1017XalanOutputStream24UnknownEncodingExceptionE\00", align 1
@_ZTIN11xalanc_1_1017XalanOutputStream24UnknownEncodingExceptionE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1017XalanOutputStream24UnknownEncodingExceptionE, ptr @_ZTIN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionE }, align 8

@_ZN11xalanc_1_1017XalanOutputStreamD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1017XalanOutputStreamD2Ev
@_ZN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionC1ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionD2Ev
@_ZN11xalanc_1_1017XalanOutputStream24UnknownEncodingExceptionC1ERNS_14XalanDOMStringE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1017XalanOutputStream24UnknownEncodingExceptionC2ERNS_14XalanDOMStringE
@_ZN11xalanc_1_1017XalanOutputStream24UnknownEncodingExceptionD2Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionD2Ev
@_ZN11xalanc_1_1017XalanOutputStream24UnknownEncodingExceptionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionD2Ev
@_ZN11xalanc_1_1017XalanOutputStream28UnsupportedEncodingExceptionC1ERKNS_14XalanDOMStringERS2_ = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1017XalanOutputStream28UnsupportedEncodingExceptionC2ERKNS_14XalanDOMStringERS2_
@_ZN11xalanc_1_1017XalanOutputStream28UnsupportedEncodingExceptionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1017XalanOutputStream28UnsupportedEncodingExceptionD2Ev
@_ZN11xalanc_1_1017XalanOutputStream34TranscoderInternalFailureExceptionC1ERKNS_14XalanDOMStringERS2_ = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1017XalanOutputStream34TranscoderInternalFailureExceptionC2ERKNS_14XalanDOMStringERS2_
@_ZN11xalanc_1_1017XalanOutputStream34TranscoderInternalFailureExceptionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1017XalanOutputStream34TranscoderInternalFailureExceptionD2Ev
@_ZN11xalanc_1_1017XalanOutputStream20TranscodingExceptionC1ERNS_14XalanDOMStringE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1017XalanOutputStream20TranscodingExceptionC2ERNS_14XalanDOMStringE
@_ZN11xalanc_1_1017XalanOutputStream20TranscodingExceptionD2Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionD2Ev
@_ZN11xalanc_1_1017XalanOutputStream20TranscodingExceptionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017XalanOutputStreamC2ERN11xercesc_2_713MemoryManagerEjjb(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1017XalanOutputStreamE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 1
  store i32 %3, ptr %6, align 8, !tbaa !63
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !73
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 3
  store i32 %2, ptr %8, align 8, !tbaa !74
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 4
  store ptr %1, ptr %9, align 8, !tbaa !75
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 4, i32 1
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 4, i32 2
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %12, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %13 unwind label %22, !prof !76

13:                                               ; preds = %5
  %14 = zext i1 %4 to i8
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 6
  store i8 0, ptr %15, align 8, !tbaa !77
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 7
  store i8 %14, ptr %16, align 1, !tbaa !78
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 8
  store ptr %1, ptr %17, align 8, !tbaa !79
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 8, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %19 = load i32, ptr %8, align 8, !tbaa !74
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24, !prof !80

21:                                               ; preds = %13
  store i32 1, ptr %8, align 8, !tbaa !74
  br label %24

22:                                               ; preds = %5
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %33

24:                                               ; preds = %21, %13
  %25 = add i32 %2, 1
  %26 = zext i32 %25 to i64
  %27 = load i64, ptr %11, align 8, !tbaa !81
  %28 = icmp ult i64 %27, %26
  br i1 %28, label %29, label %30, !prof !76

29:                                               ; preds = %24
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %26)
          to label %30 unwind label %31, !prof !76

30:                                               ; preds = %24, %29
  ret void

31:                                               ; preds = %29
  %32 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %17) #17
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #17
  br label %33

33:                                               ; preds = %31, %22
  %34 = phi { ptr, i32 } [ %32, %31 ], [ %23, %22 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #17
  resume { ptr, i32 } %34
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !82 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !83
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !84

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !85
  %8 = load ptr, ptr %0, align 8, !tbaa !79
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !86

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #18
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !87 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !81
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !88

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !89
  %8 = load ptr, ptr %0, align 8, !tbaa !75
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !90

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #18
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1017XalanOutputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1017XalanOutputStreamE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  invoke void @_ZN11xalanc_1_1024XalanTranscodingServices17destroyTranscoderEPNS_21XalanOutputTranscoderE(ptr noundef %3)
          to label %4 unwind label %8, !prof !76

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 8
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 5
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  ret void

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  tail call void @__clang_call_terminate(ptr %10) #18
  unreachable
}

declare void @_ZN11xalanc_1_1024XalanTranscodingServices17destroyTranscoderEPNS_21XalanOutputTranscoderE(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat !prof !91 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #17
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xalanc_1_1017XalanOutputStreamD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !91 {
  tail call void @llvm.trap() #18
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #7

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017XalanOutputStream5writeEPKtj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !92 {
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 4
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 4, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !93
  %8 = add i64 %7, %4
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !74
  %11 = zext i32 %10 to i64
  %12 = icmp ule i64 %8, %11
  %13 = icmp eq i64 %7, 0
  %14 = or i1 %13, %12
  br i1 %14, label %48, label %15, !prof !94

15:                                               ; preds = %3
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 4, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !89
  %18 = trunc i64 %7 to i32
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 6
  %20 = load i8, ptr %19, align 8, !tbaa !77, !range !95, !noundef !96
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %27, label %22, !prof !97

22:                                               ; preds = %15
  %23 = shl i32 %18, 1
  %24 = load ptr, ptr %0, align 8, !tbaa !60
  %25 = getelementptr inbounds ptr, ptr %24, i64 4
  %26 = load ptr, ptr %25, align 8
  invoke void %26(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %17, i32 noundef %23)
          to label %38 unwind label %41

27:                                               ; preds = %15
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 8
  invoke void @_ZN11xalanc_1_1017XalanOutputStream9transcodeEPKtjRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %17, i32 noundef %18, ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %29 unwind label %41

29:                                               ; preds = %27
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 8, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !85
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 8, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !98
  %34 = trunc i64 %33 to i32
  %35 = load ptr, ptr %0, align 8, !tbaa !60
  %36 = getelementptr inbounds ptr, ptr %35, i64 4
  %37 = load ptr, ptr %36, align 8
  invoke void %37(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %31, i32 noundef %34)
          to label %38 unwind label %41, !prof !99

38:                                               ; preds = %29, %22
  %39 = load i64, ptr %6, align 8, !tbaa !93
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %48, label %47, !prof !100

41:                                               ; preds = %29, %27, %22
  %42 = landingpad { ptr, i32 }
          cleanup
  %43 = load i64, ptr %6, align 8, !tbaa !93
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  store i64 0, ptr %6, align 8, !tbaa !93
  br label %46

46:                                               ; preds = %45, %41
  resume { ptr, i32 } %42

47:                                               ; preds = %38
  store i64 0, ptr %6, align 8, !tbaa !93
  br label %48

48:                                               ; preds = %47, %38, %3
  %49 = load i32, ptr %9, align 8, !tbaa !74
  %50 = icmp ult i32 %49, %2
  br i1 %50, label %51, label %52, !prof !100

51:                                               ; preds = %48
  tail call void @_ZN11xalanc_1_1017XalanOutputStream7doWriteEPKtj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, i32 noundef %2)
  br label %58

52:                                               ; preds = %48
  %53 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 4, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !89
  %55 = load i64, ptr %6, align 8, !tbaa !93
  %56 = getelementptr inbounds i16, ptr %54, i64 %55
  %57 = getelementptr inbounds i16, ptr %1, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %56, ptr noundef %1, ptr noundef %57)
  br label %58

58:                                               ; preds = %52, %51
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017XalanOutputStream11flushBufferEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !101 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 4, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !93
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %38, label %5, !prof !102

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 4, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !89
  %8 = trunc i64 %3 to i32
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 6
  %10 = load i8, ptr %9, align 8, !tbaa !77, !range !95, !noundef !96
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %17, label %12, !prof !97

12:                                               ; preds = %5
  %13 = shl i32 %8, 1
  %14 = load ptr, ptr %0, align 8, !tbaa !60
  %15 = getelementptr inbounds ptr, ptr %14, i64 4
  %16 = load ptr, ptr %15, align 8
  invoke void %16(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %7, i32 noundef %13)
          to label %28 unwind label %31

17:                                               ; preds = %5
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 8
  invoke void @_ZN11xalanc_1_1017XalanOutputStream9transcodeEPKtjRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %7, i32 noundef %8, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %19 unwind label %31

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 8, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !85
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 8, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !98
  %24 = trunc i64 %23 to i32
  %25 = load ptr, ptr %0, align 8, !tbaa !60
  %26 = getelementptr inbounds ptr, ptr %25, i64 4
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %21, i32 noundef %24)
          to label %28 unwind label %31, !prof !99

28:                                               ; preds = %12, %19
  %29 = load i64, ptr %2, align 8, !tbaa !93
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %38, label %37, !prof !100

31:                                               ; preds = %19, %17, %12
  %32 = landingpad { ptr, i32 }
          cleanup
  %33 = load i64, ptr %2, align 8, !tbaa !93
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i64 0, ptr %2, align 8, !tbaa !93
  br label %36

36:                                               ; preds = %35, %31
  resume { ptr, i32 } %32

37:                                               ; preds = %28
  store i64 0, ptr %2, align 8, !tbaa !93
  br label %38

38:                                               ; preds = %37, %28, %1
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017XalanOutputStream7doWriteEPKtj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #8 align 2 !prof !91 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 6
  %5 = load i8, ptr %4, align 8, !tbaa !77, !range !95, !noundef !96
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7, !prof !97

7:                                                ; preds = %3
  %8 = shl i32 %2, 1
  %9 = load ptr, ptr %0, align 8, !tbaa !60
  %10 = getelementptr inbounds ptr, ptr %9, i64 4
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, i32 noundef %8)
  br label %22

12:                                               ; preds = %3
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 8
  tail call void @_ZN11xalanc_1_1017XalanOutputStream9transcodeEPKtjRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %13)
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 8, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !85
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 8, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !98
  %18 = trunc i64 %17 to i32
  %19 = load ptr, ptr %0, align 8, !tbaa !60
  %20 = getelementptr inbounds ptr, ptr %19, i64 4
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %15, i32 noundef %18), !prof !103
  br label %22

22:                                               ; preds = %12, %7
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !104 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 1
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !105

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !93
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !89
  %17 = getelementptr inbounds i16, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !81
  br i1 %18, label %21, label %39, !prof !106

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !107

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !108

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !89
  %28 = load i64, ptr %12, align 8, !tbaa !93
  %29 = getelementptr i16, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load i16, ptr %31, align 2, !tbaa !109
  store i16 %34, ptr %32, align 2, !tbaa !109
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds i16, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !111, !llvm.loop !112

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97, !prof !115

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %42 = load ptr, ptr %0, align 8, !tbaa !75
  store ptr %42, ptr %5, align 8, !tbaa !75
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !93
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !81
  %45 = shl i64 %14, 1
  %46 = load ptr, ptr %42, align 8, !tbaa !60
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45), !prof !116
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !89
  %51 = load i64, ptr %43, align 8, !tbaa !93
  %52 = getelementptr inbounds i16, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !89
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83, !prof !117

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !89
  %56 = load i64, ptr %43, align 8, !tbaa !93
  %57 = getelementptr inbounds i16, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83, !prof !117

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !89
  %60 = load i64, ptr %43, align 8, !tbaa !93
  %61 = getelementptr inbounds i16, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !89
  %63 = load i64, ptr %12, align 8, !tbaa !93
  %64 = getelementptr inbounds i16, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83, !prof !117

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !75
  %67 = load i64, ptr %12, align 8, !tbaa !93
  %68 = load i64, ptr %19, align 8, !tbaa !81
  %69 = load ptr, ptr %15, align 8, !tbaa !89
  %70 = load ptr, ptr %5, align 8, !tbaa !75
  store ptr %70, ptr %0, align 8, !tbaa !75
  %71 = load i64, ptr %43, align 8, !tbaa !93
  store i64 %71, ptr %12, align 8, !tbaa !93
  %72 = load i64, ptr %44, align 8, !tbaa !81
  store i64 %72, ptr %19, align 8, !tbaa !81
  %73 = load ptr, ptr %50, align 8, !tbaa !89
  store ptr %73, ptr %15, align 8, !tbaa !89
  store ptr %66, ptr %5, align 8, !tbaa !75
  store i64 %67, ptr %43, align 8, !tbaa !93
  store i64 %68, ptr %44, align 8, !tbaa !81
  store ptr %69, ptr %50, align 8, !tbaa !89
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75, !prof !118

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !60
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79, !prof !119

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #18
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !81
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !89
  %89 = load ptr, ptr %5, align 8, !tbaa !75
  %90 = load ptr, ptr %89, align 8, !tbaa !60
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #18
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102, !prof !120

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107, !prof !121

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111, !prof !121

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %108)
  %109 = getelementptr inbounds i16, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !prof !122, !llvm.loop !123

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %112)
  %113 = getelementptr inbounds i16, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !prof !124, !llvm.loop !125

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %100, i1 false), !prof !126
  br label %134

116:                                              ; preds = %97
  %117 = sub nsw i64 0, %9
  %118 = getelementptr inbounds i16, ptr %17, i64 %117
  %119 = icmp eq ptr %3, %2
  br i1 %119, label %124, label %120

120:                                              ; preds = %116, %120
  %121 = phi ptr [ %122, %120 ], [ %118, %116 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %121)
  %122 = getelementptr inbounds i16, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !127

124:                                              ; preds = %120, %116
  %125 = icmp eq ptr %118, %1
  br i1 %125, label %132, label %126

126:                                              ; preds = %124
  %127 = ptrtoint ptr %118 to i64
  %128 = sub i64 %127, %99
  %129 = ashr exact i64 %128, 1
  %130 = sub nsw i64 0, %129
  %131 = getelementptr inbounds i16, ptr %17, i64 %130
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %131, ptr align 2 %1, i64 %128, i1 false)
  br label %132

132:                                              ; preds = %126, %124
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %8, i1 false)
  br label %134

133:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !93
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017XalanOutputStream9transcodeEPKtjRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(144) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !92 {
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %46, !prof !100

12:                                               ; preds = %4
  %13 = tail call noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageEPKtjRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext false)
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 7
  %15 = load i8, ptr %14, align 1, !range !95
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %13, i1 true, i1 %16
  br i1 %17, label %177, label %18

18:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #17
  %19 = load ptr, ptr %3, align 8, !tbaa !79
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %19)
  %20 = call ptr @__cxa_allocate_exception(i64 104) #17
  %21 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef 3)
          to label %22 unwind label %26

22:                                               ; preds = %18
  %23 = load ptr, ptr %5, align 8, !tbaa !75
  invoke void @_ZN11xalanc_1_1012XSLExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %20, ptr noundef nonnull align 8 dereferenceable(36) %21, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %24 unwind label %26

24:                                               ; preds = %22
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1017XalanOutputStream20TranscodingExceptionE, i64 0, inrange i32 0, i64 2), ptr %20, align 8, !tbaa !60
  invoke void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTIN11xalanc_1_1017XalanOutputStream20TranscodingExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionD2Ev) #19
          to label %25 unwind label %28

25:                                               ; preds = %24
  unreachable

26:                                               ; preds = %22, %18
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %20) #17
  br label %30

28:                                               ; preds = %24
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi { ptr, i32 } [ %29, %28 ], [ %27, %26 ]
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !81
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !89
  %38 = load ptr, ptr %5, align 8, !tbaa !75
  %39 = load ptr, ptr %38, align 8, !tbaa !60
  %40 = getelementptr inbounds ptr, ptr %39, i64 3
  %41 = load ptr, ptr %40, align 8
  invoke void %41(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %37)
          to label %45 unwind label %42

42:                                               ; preds = %35
  %43 = landingpad { ptr, i32 }
          catch ptr null
  %44 = extractvalue { ptr, i32 } %43, 0
  call void @__clang_call_terminate(ptr %44) #18
  unreachable

45:                                               ; preds = %30, %35
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  br label %178

46:                                               ; preds = %4
  %47 = shl i32 %2, 1
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 7
  br label %51

51:                                               ; preds = %139, %46
  %52 = phi i8 [ 0, %46 ], [ %140, %139 ]
  %53 = phi i32 [ 0, %46 ], [ %130, %139 ]
  %54 = phi i32 [ 0, %46 ], [ %132, %139 ]
  %55 = phi ptr [ %1, %46 ], [ %141, %139 ]
  %56 = phi i32 [ %2, %46 ], [ %142, %139 ]
  %57 = phi i32 [ %47, %46 ], [ %143, %139 ]
  %58 = phi i32 [ %47, %46 ], [ %144, %139 ]
  %59 = add nuw i32 %57, 1
  %60 = zext i32 %59 to i64
  %61 = load i64, ptr %48, align 8, !tbaa !98
  %62 = icmp ugt i64 %61, %60
  br i1 %62, label %84, label %63, !prof !128

63:                                               ; preds = %51
  %64 = icmp ult i64 %61, %60
  br i1 %64, label %65, label %87, !prof !129

65:                                               ; preds = %63
  %66 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %67 = load i64, ptr %66, align 8, !tbaa !83
  %68 = icmp ult i64 %67, %60
  br i1 %68, label %69, label %70, !prof !130

69:                                               ; preds = %65
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %60)
  br label %70

70:                                               ; preds = %69, %65
  %71 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !85
  %73 = getelementptr inbounds i8, ptr %72, i64 %60
  %74 = load i64, ptr %48, align 8, !tbaa !98
  %75 = icmp eq i64 %74, %60
  br i1 %75, label %87, label %76, !prof !130

76:                                               ; preds = %70
  %77 = getelementptr i8, ptr %72, i64 %74
  br label %78

78:                                               ; preds = %78, %76
  %79 = phi ptr [ %80, %78 ], [ %77, %76 ]
  store i8 0, ptr %79, align 1, !tbaa !131
  %80 = getelementptr inbounds i8, ptr %79, i64 1
  %81 = load i64, ptr %48, align 8, !tbaa !98
  %82 = add i64 %81, 1
  store i64 %82, ptr %48, align 8, !tbaa !98
  %83 = icmp eq ptr %80, %73
  br i1 %83, label %87, label %78, !prof !132, !llvm.loop !133

84:                                               ; preds = %51
  %85 = add i64 %61, -1
  %86 = call i64 @llvm.umin.i64(i64 %60, i64 %85)
  store i64 %86, ptr %48, align 8, !tbaa !98
  br label %87

87:                                               ; preds = %78, %63, %70, %84
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  store i32 0, ptr %6, align 4, !tbaa !134
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  store i32 0, ptr %7, align 4, !tbaa !134
  %88 = load ptr, ptr %9, align 8, !tbaa !73
  %89 = load ptr, ptr %49, align 8, !tbaa !85
  %90 = zext i32 %53 to i64
  %91 = getelementptr inbounds i8, ptr %89, i64 %90
  %92 = load ptr, ptr %88, align 8, !tbaa !60
  %93 = getelementptr inbounds ptr, ptr %92, i64 2
  %94 = load ptr, ptr %93, align 8
  %95 = call noundef i32 %94(ptr noundef nonnull align 8 dereferenceable(16) %88, ptr noundef %55, i32 noundef %56, ptr noundef nonnull %91, i32 noundef %58, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7), !prof !135
  %96 = icmp eq i32 %95, 0
  %97 = load i8, ptr %50, align 1, !range !95
  %98 = icmp eq i8 %97, 0
  %99 = select i1 %96, i1 true, i1 %98, !prof !97
  br i1 %99, label %128, label %100, !prof !97

100:                                              ; preds = %87
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #17
  %101 = load ptr, ptr %3, align 8, !tbaa !79
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(8) %101)
  %102 = call ptr @__cxa_allocate_exception(i64 104) #17
  %103 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %8, i32 noundef 3)
          to label %104 unwind label %108

104:                                              ; preds = %100
  %105 = load ptr, ptr %8, align 8, !tbaa !75
  invoke void @_ZN11xalanc_1_1012XSLExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %102, ptr noundef nonnull align 8 dereferenceable(36) %103, ptr noundef nonnull align 8 dereferenceable(8) %105)
          to label %106 unwind label %108

106:                                              ; preds = %104
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1017XalanOutputStream20TranscodingExceptionE, i64 0, inrange i32 0, i64 2), ptr %102, align 8, !tbaa !60
  invoke void @__cxa_throw(ptr nonnull %102, ptr nonnull @_ZTIN11xalanc_1_1017XalanOutputStream20TranscodingExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionD2Ev) #19
          to label %107 unwind label %110

107:                                              ; preds = %106
  unreachable

108:                                              ; preds = %104, %100
  %109 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %102) #17
  br label %112

110:                                              ; preds = %106
  %111 = landingpad { ptr, i32 }
          cleanup
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi { ptr, i32 } [ %111, %110 ], [ %109, %108 ]
  %114 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 2
  %115 = load i64, ptr %114, align 8, !tbaa !81
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %127, label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !89
  %120 = load ptr, ptr %8, align 8, !tbaa !75
  %121 = load ptr, ptr %120, align 8, !tbaa !60
  %122 = getelementptr inbounds ptr, ptr %121, i64 3
  %123 = load ptr, ptr %122, align 8
  invoke void %123(ptr noundef nonnull align 8 dereferenceable(8) %120, ptr noundef %119)
          to label %127 unwind label %124

124:                                              ; preds = %117
  %125 = landingpad { ptr, i32 }
          catch ptr null
  %126 = extractvalue { ptr, i32 } %125, 0
  call void @__clang_call_terminate(ptr %126) #18
  unreachable

127:                                              ; preds = %112, %117
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  br label %178

128:                                              ; preds = %87
  %129 = load i32, ptr %7, align 4, !tbaa !134
  %130 = add i32 %129, %53
  %131 = load i32, ptr %6, align 4, !tbaa !134
  %132 = add i32 %131, %54
  %133 = icmp eq i32 %132, %2
  br i1 %133, label %139, label %134, !prof !97

134:                                              ; preds = %128
  %135 = zext i32 %131 to i64
  %136 = getelementptr inbounds i16, ptr %55, i64 %135
  %137 = sub i32 %56, %131
  %138 = shl i32 %57, 1
  br label %139

139:                                              ; preds = %128, %134
  %140 = phi i8 [ %52, %134 ], [ 1, %128 ]
  %141 = phi ptr [ %136, %134 ], [ %55, %128 ]
  %142 = phi i32 [ %137, %134 ], [ %56, %128 ]
  %143 = phi i32 [ %138, %134 ], [ %57, %128 ]
  %144 = phi i32 [ %57, %134 ], [ %58, %128 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  %145 = and i8 %140, 1
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %51, label %147, !prof !100, !llvm.loop !136

147:                                              ; preds = %139
  %148 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %149 = load i64, ptr %48, align 8, !tbaa !98
  %150 = zext i32 %130 to i64
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %177, label %152, !prof !100

152:                                              ; preds = %147
  %153 = icmp ugt i64 %149, %150
  br i1 %153, label %174, label %154, !prof !128

154:                                              ; preds = %152
  %155 = icmp ult i64 %149, %150
  br i1 %155, label %156, label %177, !prof !129

156:                                              ; preds = %154
  %157 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %158 = load i64, ptr %157, align 8, !tbaa !83
  %159 = icmp ult i64 %158, %150
  br i1 %159, label %160, label %161, !prof !130

160:                                              ; preds = %156
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %150)
  br label %161

161:                                              ; preds = %160, %156
  %162 = load ptr, ptr %148, align 8, !tbaa !85
  %163 = getelementptr inbounds i8, ptr %162, i64 %150
  %164 = load i64, ptr %48, align 8, !tbaa !98
  %165 = icmp eq i64 %164, %150
  br i1 %165, label %177, label %166, !prof !130

166:                                              ; preds = %161
  %167 = getelementptr i8, ptr %162, i64 %164
  br label %168

168:                                              ; preds = %168, %166
  %169 = phi ptr [ %170, %168 ], [ %167, %166 ]
  store i8 0, ptr %169, align 1, !tbaa !131
  %170 = getelementptr inbounds i8, ptr %169, i64 1
  %171 = load i64, ptr %48, align 8, !tbaa !98
  %172 = add i64 %171, 1
  store i64 %172, ptr %48, align 8, !tbaa !98
  %173 = icmp eq ptr %170, %163
  br i1 %173, label %177, label %168, !prof !132, !llvm.loop !133

174:                                              ; preds = %152
  %175 = add i64 %149, -1
  %176 = call i64 @llvm.umin.i64(i64 %150, i64 %175)
  store i64 %176, ptr %48, align 8, !tbaa !98
  br label %177

177:                                              ; preds = %168, %174, %161, %154, %147, %12
  ret void

178:                                              ; preds = %127, %45
  %179 = phi { ptr, i32 } [ %31, %45 ], [ %113, %127 ]
  resume { ptr, i32 } %179
}

declare noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageEPKtjRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #10

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017XalanOutputStream17setOutputEncodingERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !137 {
  %3 = alloca i32, align 4
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  tail call void @_ZN11xalanc_1_1017XalanOutputStream11flushBufferEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !73
  tail call void @_ZN11xalanc_1_1024XalanTranscodingServices17destroyTranscoderEPNS_21XalanOutputTranscoderE(ptr noundef %7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  store i32 0, ptr %3, align 4, !tbaa !138
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !63
  %12 = call noundef ptr @_ZN11xalanc_1_1024XalanTranscodingServices17makeNewTranscoderERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringERNS0_5eCodeEj(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef %11)
  store ptr %12, ptr %6, align 8, !tbaa !73
  %13 = load i32, ptr %3, align 4, !tbaa !138
  switch i32 %13, label %38 [
    i32 1, label %14
    i32 0, label %63
  ], !prof !140

14:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #17
  %15 = load ptr, ptr %8, align 8, !tbaa !75
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %15)
  %16 = call ptr @__cxa_allocate_exception(i64 144) #17
  invoke void @_ZN11xalanc_1_1017XalanOutputStream28UnsupportedEncodingExceptionC2ERKNS_14XalanDOMStringERS2_(ptr noundef nonnull align 8 dereferenceable(144) %16, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %4)
          to label %17 unwind label %18

17:                                               ; preds = %14
  invoke void @__cxa_throw(ptr nonnull %16, ptr nonnull @_ZTIN11xalanc_1_1017XalanOutputStream28UnsupportedEncodingExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanOutputStream28UnsupportedEncodingExceptionD2Ev) #19
          to label %89 unwind label %20

18:                                               ; preds = %14
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %16) #17
  br label %22

20:                                               ; preds = %17
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi { ptr, i32 } [ %21, %20 ], [ %19, %18 ]
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !81
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !89
  %30 = load ptr, ptr %4, align 8, !tbaa !75
  %31 = load ptr, ptr %30, align 8, !tbaa !60
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %29)
          to label %37 unwind label %34

34:                                               ; preds = %27
  %35 = landingpad { ptr, i32 }
          catch ptr null
  %36 = extractvalue { ptr, i32 } %35, 0
  call void @__clang_call_terminate(ptr %36) #18
  unreachable

37:                                               ; preds = %22, %27
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #17
  br label %87

38:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #17
  %39 = load ptr, ptr %8, align 8, !tbaa !75
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %39)
  %40 = call ptr @__cxa_allocate_exception(i64 144) #17
  invoke void @_ZN11xalanc_1_1017XalanOutputStream34TranscoderInternalFailureExceptionC2ERKNS_14XalanDOMStringERS2_(ptr noundef nonnull align 8 dereferenceable(144) %40, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %5)
          to label %41 unwind label %43

41:                                               ; preds = %38
  invoke void @__cxa_throw(ptr nonnull %40, ptr nonnull @_ZTIN11xalanc_1_1017XalanOutputStream34TranscoderInternalFailureExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanOutputStream34TranscoderInternalFailureExceptionD2Ev) #19
          to label %42 unwind label %45

42:                                               ; preds = %41
  unreachable

43:                                               ; preds = %38
  %44 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %40) #17
  br label %47

45:                                               ; preds = %41
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi { ptr, i32 } [ %46, %45 ], [ %44, %43 ]
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  %50 = load i64, ptr %49, align 8, !tbaa !81
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !89
  %55 = load ptr, ptr %5, align 8, !tbaa !75
  %56 = load ptr, ptr %55, align 8, !tbaa !60
  %57 = getelementptr inbounds ptr, ptr %56, i64 3
  %58 = load ptr, ptr %57, align 8
  invoke void %58(ptr noundef nonnull align 8 dereferenceable(8) %55, ptr noundef %54)
          to label %62 unwind label %59

59:                                               ; preds = %52
  %60 = landingpad { ptr, i32 }
          catch ptr null
  %61 = extractvalue { ptr, i32 } %60, 0
  call void @__clang_call_terminate(ptr %61) #18
  unreachable

62:                                               ; preds = %47, %52
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  br label %87

63:                                               ; preds = %2
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 5
  %65 = icmp eq ptr %64, %1
  br i1 %65, label %71, label %66, !prof !141

66:                                               ; preds = %63
  %67 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %64, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %68 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %69 = load i32, ptr %68, align 8, !tbaa !142
  %70 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 5, i32 1
  store i32 %69, ptr %70, align 8, !tbaa !142
  br label %71

71:                                               ; preds = %63, %66
  %72 = call noundef ptr @_ZN11xalanc_1_1024XalanTranscodingServices15getStreamPrologERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %1)
  br label %73

73:                                               ; preds = %73, %71
  %74 = phi i32 [ 0, %71 ], [ %79, %73 ]
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i8, ptr %72, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !131
  %78 = icmp eq i8 %77, 0
  %79 = add i32 %74, 1
  br i1 %78, label %80, label %73, !prof !143, !llvm.loop !144

80:                                               ; preds = %73
  %81 = icmp eq i32 %74, 0
  br i1 %81, label %86, label %82, !prof !143

82:                                               ; preds = %80
  %83 = load ptr, ptr %0, align 8, !tbaa !60
  %84 = getelementptr inbounds ptr, ptr %83, i64 4
  %85 = load ptr, ptr %84, align 8
  call void %85(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %72, i32 noundef %74)
  br label %86

86:                                               ; preds = %82, %80
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret void

87:                                               ; preds = %62, %37
  %88 = phi { ptr, i32 } [ %23, %37 ], [ %48, %62 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  resume { ptr, i32 } %88

89:                                               ; preds = %17
  unreachable
}

declare noundef ptr @_ZN11xalanc_1_1024XalanTranscodingServices17makeNewTranscoderERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringERNS0_5eCodeEj(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN11xalanc_1_1024XalanTranscodingServices15getStreamPrologERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1017XalanOutputStream14canTranscodeToEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(144) %0, i32 noundef %1) local_unnamed_addr #1 align 2 !prof !91 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !60
  %8 = getelementptr inbounds ptr, ptr %7, i64 4
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %1)
  br label %11

11:                                               ; preds = %2, %6
  %12 = phi i1 [ %10, %6 ], [ true, %2 ]
  ret i1 %12
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017XalanOutputStream13setBufferSizeEj(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZN11xalanc_1_1017XalanOutputStream11flushBufferEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 3
  %5 = tail call i32 @llvm.umax.i32(i32 %1, i32 1)
  store i32 %5, ptr %4, align 8, !tbaa !74
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 4, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !93
  %9 = zext i32 %5 to i64
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = add i32 %1, 1
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 4, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !81
  %16 = icmp ult i64 %15, %13
  br i1 %16, label %17, label %63

17:                                               ; preds = %11
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %13)
  br label %63

18:                                               ; preds = %2
  %19 = icmp ugt i64 %8, %9
  br i1 %19, label %20, label %63

20:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %21 = load ptr, ptr %6, align 8, !tbaa !75
  store ptr %21, ptr %3, align 8, !tbaa !75
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %25 = add i32 %1, 1
  %26 = icmp eq i32 %25, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  %28 = zext i32 %25 to i64
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %28)
          to label %29 unwind label %49

29:                                               ; preds = %20, %27
  %30 = load ptr, ptr %3, align 8, !tbaa !75
  %31 = load i64, ptr %22, align 8, !tbaa !93
  %32 = load i64, ptr %23, align 8, !tbaa !81
  %33 = load ptr, ptr %24, align 8, !tbaa !89
  %34 = load ptr, ptr %6, align 8, !tbaa !75
  store ptr %34, ptr %3, align 8, !tbaa !75
  %35 = load i64, ptr %7, align 8, !tbaa !93
  store i64 %35, ptr %22, align 8, !tbaa !93
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 4, i32 2
  %37 = load i64, ptr %36, align 8, !tbaa !81
  store i64 %37, ptr %23, align 8, !tbaa !81
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 4, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !89
  store ptr %39, ptr %24, align 8, !tbaa !89
  store ptr %30, ptr %6, align 8, !tbaa !75
  store i64 %31, ptr %7, align 8, !tbaa !93
  store i64 %32, ptr %36, align 8, !tbaa !81
  store ptr %33, ptr %38, align 8, !tbaa !89
  %40 = icmp eq i64 %37, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %29
  %42 = load ptr, ptr %34, align 8, !tbaa !60
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  invoke void %44(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef %39)
          to label %48 unwind label %45

45:                                               ; preds = %41
  %46 = landingpad { ptr, i32 }
          catch ptr null
  %47 = extractvalue { ptr, i32 } %46, 0
  call void @__clang_call_terminate(ptr %47) #18
  unreachable

48:                                               ; preds = %29, %41
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %63

49:                                               ; preds = %27
  %50 = landingpad { ptr, i32 }
          cleanup
  %51 = load i64, ptr %23, align 8, !tbaa !81
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %24, align 8, !tbaa !89
  %55 = load ptr, ptr %3, align 8, !tbaa !75
  %56 = load ptr, ptr %55, align 8, !tbaa !60
  %57 = getelementptr inbounds ptr, ptr %56, i64 3
  %58 = load ptr, ptr %57, align 8
  invoke void %58(ptr noundef nonnull align 8 dereferenceable(8) %55, ptr noundef %54)
          to label %62 unwind label %59

59:                                               ; preds = %53
  %60 = landingpad { ptr, i32 }
          catch ptr null
  %61 = extractvalue { ptr, i32 } %60, 0
  call void @__clang_call_terminate(ptr %61) #18
  unreachable

62:                                               ; preds = %49, %53
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %50

63:                                               ; preds = %17, %11, %18, %48
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017XalanOutputStream7newlineEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #1 align 2 !prof !91 {
  tail call void @_ZN11xalanc_1_1017XalanOutputStream5writeEPKtj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull @_ZN11xalanc_1_1017XalanOutputStream10s_nlStringE, i32 noundef 1)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xalanc_1_1017XalanOutputStream16getNewlineStringEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #11 align 2 !prof !137 {
  ret ptr @_ZN11xalanc_1_1017XalanOutputStream10s_nlStringE
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 align 2 !prof !91 {
  tail call void @_ZN11xalanc_1_1012XSLExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  ret void
}

declare void @_ZN11xalanc_1_1012XSLExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1012XSLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #12

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #3 align 2 !prof !91 {
  tail call void @_ZN11xalanc_1_1012XSLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #17
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #3 align 2 !prof !91 {
  tail call void @_ZN11xalanc_1_1012XSLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #17
  tail call void @_ZdlPv(ptr noundef %0) #20
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017XalanOutputStream24UnknownEncodingExceptionC2ERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #1 align 2 !prof !91 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 3)
  %4 = load ptr, ptr %1, align 8, !tbaa !75
  tail call void @_ZN11xalanc_1_1012XSLExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1017XalanOutputStream24UnknownEncodingExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  ret void
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1017XalanOutputStream24UnknownEncodingExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #3 align 2 !prof !91 {
  tail call void @_ZN11xalanc_1_1012XSLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #17
  tail call void @_ZdlPv(ptr noundef %0) #20
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017XalanOutputStream28UnsupportedEncodingExceptionC2ERKNS_14XalanDOMStringERS2_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %5 = load ptr, ptr %2, align 8, !tbaa !75
  tail call void @_ZN11xalanc_1_1012XSLExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1017XalanOutputStream28UnsupportedEncodingExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream::UnsupportedEncodingException", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %2, align 8, !tbaa !75
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 0, i32 noundef -1)
          to label %8 unwind label %9

8:                                                ; preds = %3
  ret void

9:                                                ; preds = %3
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1012XSLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #17
  resume { ptr, i32 } %10
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1017XalanOutputStream28UnsupportedEncodingExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #3 align 2 !prof !91 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1017XalanOutputStream28UnsupportedEncodingExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream::UnsupportedEncodingException", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  tail call void @_ZN11xalanc_1_1012XSLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #17
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1017XalanOutputStream28UnsupportedEncodingExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #3 align 2 !prof !91 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1017XalanOutputStream28UnsupportedEncodingExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream::UnsupportedEncodingException", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  tail call void @_ZN11xalanc_1_1012XSLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #17
  tail call void @_ZdlPv(ptr noundef %0) #20
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017XalanOutputStream34TranscoderInternalFailureExceptionC2ERKNS_14XalanDOMStringERS2_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %5 = load ptr, ptr %2, align 8, !tbaa !75
  tail call void @_ZN11xalanc_1_1012XSLExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1017XalanOutputStream34TranscoderInternalFailureExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream::TranscoderInternalFailureException", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %2, align 8, !tbaa !75
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 0, i32 noundef -1)
          to label %8 unwind label %9

8:                                                ; preds = %3
  ret void

9:                                                ; preds = %3
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1012XSLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #17
  resume { ptr, i32 } %10
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1017XalanOutputStream34TranscoderInternalFailureExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #3 align 2 !prof !91 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1017XalanOutputStream34TranscoderInternalFailureExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream::TranscoderInternalFailureException", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  tail call void @_ZN11xalanc_1_1012XSLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #17
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1017XalanOutputStream34TranscoderInternalFailureExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #3 align 2 !prof !91 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1017XalanOutputStream34TranscoderInternalFailureExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream::TranscoderInternalFailureException", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  tail call void @_ZN11xalanc_1_1012XSLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #17
  tail call void @_ZdlPv(ptr noundef %0) #20
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017XalanOutputStream20TranscodingExceptionC2ERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #1 align 2 !prof !91 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 3)
  %4 = load ptr, ptr %1, align 8, !tbaa !75
  tail call void @_ZN11xalanc_1_1012XSLExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1017XalanOutputStream20TranscodingExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1017XalanOutputStream20TranscodingExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #3 align 2 !prof !91 {
  tail call void @_ZN11xalanc_1_1012XSLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #17
  tail call void @_ZdlPv(ptr noundef %0) #20
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1017XalanOutputStream26XalanOutputStreamException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #3 comdat align 2 !prof !91 {
  ret ptr @_ZN11xalanc_1_1017XalanOutputStream26XalanOutputStreamException6m_typeE
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1017XalanOutputStream28UnsupportedEncodingException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #3 comdat align 2 !prof !91 {
  ret ptr @_ZN11xalanc_1_1017XalanOutputStream28UnsupportedEncodingException6m_typeE
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1017XalanOutputStream24UnknownEncodingException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #3 comdat align 2 !prof !91 {
  ret ptr @_ZN11xalanc_1_1017XalanOutputStream24UnknownEncodingException6m_typeE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !145 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %63, label %5, !prof !146

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !81
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !93
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35, !prof !147

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %12 = load ptr, ptr %0, align 8, !tbaa !75
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !75
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !93
  %16 = load i64, ptr %6, align 8, !tbaa !81
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !89
  %19 = load ptr, ptr %3, align 8, !tbaa !75
  store ptr %19, ptr %0, align 8, !tbaa !75
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !93
  store i64 %21, ptr %14, align 8, !tbaa !93
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !81
  store i64 %23, ptr %6, align 8, !tbaa !81
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !89
  store ptr %25, ptr %17, align 8, !tbaa !89
  store ptr %13, ptr %3, align 8, !tbaa !75
  store i64 %15, ptr %20, align 8, !tbaa !93
  store i64 %16, ptr %22, align 8, !tbaa !81
  store ptr %18, ptr %24, align 8, !tbaa !89
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27, !prof !148

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !60
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31, !prof !149

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #18
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %63

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !89
  %38 = getelementptr inbounds i16, ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !93
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42, !prof !150

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53, !prof !151

44:                                               ; preds = %42
  %45 = getelementptr inbounds i16, ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !89
  %48 = getelementptr inbounds i16, ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !93
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !93
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !89
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %63, label %57, !prof !152

57:                                               ; preds = %53
  %58 = ptrtoint ptr %54 to i64
  %59 = ptrtoint ptr %55 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !89
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %62, ptr align 2 %55, i64 %60, i1 false), !prof !153
  br label %63

63:                                               ; preds = %57, %53, %34, %2
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !154 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !75
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !93
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !155

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !75
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !93
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !81
  %16 = shl i64 %13, 1
  %17 = load ptr, ptr %2, align 8, !tbaa !60
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !156
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !89
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !89
  %24 = load i64, ptr %9, align 8, !tbaa !93
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !157

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !75
  %28 = load i64, ptr %6, align 8, !tbaa !93
  %29 = load i64, ptr %7, align 8, !tbaa !81
  %30 = load ptr, ptr %8, align 8, !tbaa !89
  %31 = load ptr, ptr %5, align 8, !tbaa !75
  store ptr %31, ptr %0, align 8, !tbaa !75
  %32 = load i64, ptr %14, align 8, !tbaa !93
  store i64 %32, ptr %6, align 8, !tbaa !93
  %33 = load i64, ptr %15, align 8, !tbaa !81
  store i64 %33, ptr %7, align 8, !tbaa !81
  %34 = load ptr, ptr %21, align 8, !tbaa !89
  store ptr %34, ptr %8, align 8, !tbaa !89
  store ptr %27, ptr %5, align 8, !tbaa !75
  store i64 %28, ptr %14, align 8, !tbaa !93
  store i64 %29, ptr %15, align 8, !tbaa !81
  store ptr %30, ptr %21, align 8, !tbaa !89
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !157

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !60
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #18
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !81
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !89
  %50 = load ptr, ptr %5, align 8, !tbaa !75
  %51 = load ptr, ptr %50, align 8, !tbaa !60
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #18
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !158

60:                                               ; preds = %58
  %61 = shl i64 %3, 1
  %62 = load ptr, ptr %2, align 8, !tbaa !60
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !159
  store ptr %65, ptr %8, align 8, !tbaa !89
  store i64 %3, ptr %7, align 8, !tbaa !81
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #13

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !160 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !75
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !93
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %41, label %8, !prof !155

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %9 = tail call noundef i64 @llvm.umax.i64(i64 %6, i64 %1)
  store ptr %4, ptr %3, align 8, !tbaa !75
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !93
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !81
  %12 = shl i64 %9, 1
  %13 = load ptr, ptr %4, align 8, !tbaa !60
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %12), !prof !161
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !89
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !89
  %20 = load i64, ptr %5, align 8, !tbaa !93
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %16, ptr noundef %19, ptr noundef %21)
          to label %22 unwind label %27, !prof !157

22:                                               ; preds = %8
  %23 = load ptr, ptr %3, align 8, !tbaa !75
  %24 = load i64, ptr %10, align 8, !tbaa !93
  %25 = load i64, ptr %11, align 8, !tbaa !81
  %26 = load ptr, ptr %17, align 8, !tbaa !89
  store ptr %4, ptr %3, align 8, !tbaa !75
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %49

27:                                               ; preds = %8
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load i64, ptr %11, align 8, !tbaa !81
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %17, align 8, !tbaa !89
  %33 = load ptr, ptr %3, align 8, !tbaa !75
  %34 = load ptr, ptr %33, align 8, !tbaa !60
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %32)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #18
  unreachable

40:                                               ; preds = %31, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %28

41:                                               ; preds = %2
  %42 = icmp eq i64 %1, 0
  br i1 %42, label %49, label %43, !prof !158

43:                                               ; preds = %41
  %44 = shl i64 %1, 1
  %45 = load ptr, ptr %4, align 8, !tbaa !60
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %44), !prof !162
  br label %49

49:                                               ; preds = %22, %41, %43
  %50 = phi ptr [ null, %41 ], [ %48, %43 ], [ %26, %22 ]
  %51 = phi i64 [ 0, %41 ], [ %1, %43 ], [ %25, %22 ]
  %52 = phi i64 [ 0, %41 ], [ 0, %43 ], [ %24, %22 ]
  %53 = phi ptr [ %4, %41 ], [ %4, %43 ], [ %23, %22 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !75
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !81
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !89
  store ptr %53, ptr %0, align 8, !tbaa !75
  store i64 %52, ptr %5, align 8, !tbaa !93
  store i64 %51, ptr %55, align 8, !tbaa !81
  store ptr %50, ptr %57, align 8, !tbaa !89
  %59 = icmp eq i64 %56, 0
  br i1 %59, label %67, label %60, !prof !163

60:                                               ; preds = %49
  %61 = load ptr, ptr %54, align 8, !tbaa !60
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %58)
          to label %67 unwind label %64, !prof !164

64:                                               ; preds = %60
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #18
  unreachable

67:                                               ; preds = %49, %60
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !165 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !93
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !81
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !166

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !89
  %12 = getelementptr inbounds i16, ptr %11, i64 %5
  %13 = load i16, ptr %1, align 2, !tbaa !109
  store i16 %13, ptr %12, align 2, !tbaa !109
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !93
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %21 = load ptr, ptr %0, align 8, !tbaa !75
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !75
  %24 = load i64, ptr %4, align 8, !tbaa !93
  %25 = load i64, ptr %6, align 8, !tbaa !81
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !89
  %28 = load ptr, ptr %3, align 8, !tbaa !75
  store ptr %28, ptr %0, align 8, !tbaa !75
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !93
  store i64 %30, ptr %4, align 8, !tbaa !93
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !81
  store i64 %32, ptr %6, align 8, !tbaa !81
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !89
  store ptr %34, ptr %26, align 8, !tbaa !89
  store ptr %23, ptr %3, align 8, !tbaa !75
  store i64 %24, ptr %29, align 8, !tbaa !93
  store i64 %25, ptr %31, align 8, !tbaa !81
  store ptr %27, ptr %33, align 8, !tbaa !89
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !60
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #18
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !81
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !89
  %52 = load ptr, ptr %3, align 8, !tbaa !75
  %53 = load ptr, ptr %52, align 8, !tbaa !60
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #18
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #14

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !137 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %4 = load ptr, ptr %0, align 8, !tbaa !79
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !79
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !98
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !83
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !85
  %12 = load ptr, ptr %3, align 8, !tbaa !79
  store ptr %12, ptr %0, align 8, !tbaa !79
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !98
  store i64 %14, ptr %6, align 8, !tbaa !98
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !83
  store i64 %16, ptr %8, align 8, !tbaa !83
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !85
  store ptr %18, ptr %10, align 8, !tbaa !85
  store ptr %5, ptr %3, align 8, !tbaa !79
  store i64 %7, ptr %13, align 8, !tbaa !98
  store i64 %9, ptr %15, align 8, !tbaa !83
  store ptr %11, ptr %17, align 8, !tbaa !85
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20, !prof !143

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !60
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #18
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !137 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %2, ptr %0, align 8, !tbaa !79
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !98
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %57, label %12, !prof !143

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !79
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !98
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !83
  %16 = load ptr, ptr %2, align 8, !tbaa !60
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13)
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %19, ptr %20, align 8, !tbaa !85
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !85
  %23 = load i64, ptr %9, align 8, !tbaa !98
  %24 = getelementptr inbounds i8, ptr %22, i64 %23
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %19, ptr noundef %22, ptr noundef %24)
          to label %25 unwind label %43

25:                                               ; preds = %12
  %26 = load ptr, ptr %0, align 8, !tbaa !79
  %27 = load i64, ptr %6, align 8, !tbaa !98
  %28 = load i64, ptr %7, align 8, !tbaa !83
  %29 = load ptr, ptr %8, align 8, !tbaa !85
  %30 = load ptr, ptr %5, align 8, !tbaa !79
  store ptr %30, ptr %0, align 8, !tbaa !79
  %31 = load i64, ptr %14, align 8, !tbaa !98
  store i64 %31, ptr %6, align 8, !tbaa !98
  %32 = load i64, ptr %15, align 8, !tbaa !83
  store i64 %32, ptr %7, align 8, !tbaa !83
  %33 = load ptr, ptr %20, align 8, !tbaa !85
  store ptr %33, ptr %8, align 8, !tbaa !85
  store ptr %26, ptr %5, align 8, !tbaa !79
  store i64 %27, ptr %14, align 8, !tbaa !98
  store i64 %28, ptr %15, align 8, !tbaa !83
  store ptr %29, ptr %20, align 8, !tbaa !85
  %34 = icmp eq i64 %28, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %25
  %36 = load ptr, ptr %26, align 8, !tbaa !60
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  invoke void %38(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %29)
          to label %42 unwind label %39

39:                                               ; preds = %35
  %40 = landingpad { ptr, i32 }
          catch ptr null
  %41 = extractvalue { ptr, i32 } %40, 0
  call void @__clang_call_terminate(ptr %41) #18
  unreachable

42:                                               ; preds = %25, %35
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %64

43:                                               ; preds = %12
  %44 = landingpad { ptr, i32 }
          cleanup
  %45 = load i64, ptr %15, align 8, !tbaa !83
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %20, align 8, !tbaa !85
  %49 = load ptr, ptr %5, align 8, !tbaa !79
  %50 = load ptr, ptr %49, align 8, !tbaa !60
  %51 = getelementptr inbounds ptr, ptr %50, i64 3
  %52 = load ptr, ptr %51, align 8
  invoke void %52(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %48)
          to label %56 unwind label %53

53:                                               ; preds = %47
  %54 = landingpad { ptr, i32 }
          catch ptr null
  %55 = extractvalue { ptr, i32 } %54, 0
  call void @__clang_call_terminate(ptr %55) #18
  unreachable

56:                                               ; preds = %43, %47
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %44

57:                                               ; preds = %4
  %58 = icmp eq i64 %3, 0
  br i1 %58, label %64, label %59, !prof !141

59:                                               ; preds = %57
  %60 = load ptr, ptr %2, align 8, !tbaa !60
  %61 = getelementptr inbounds ptr, ptr %60, i64 2
  %62 = load ptr, ptr %61, align 8
  %63 = tail call noundef ptr %62(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3), !prof !167
  store ptr %63, ptr %8, align 8, !tbaa !85
  store i64 %3, ptr %7, align 8, !tbaa !83
  br label %64

64:                                               ; preds = %57, %59, %42
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = icmp eq ptr %3, %2
  br i1 %9, label %130, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !98
  %13 = add i64 %12, %8
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !85
  %16 = getelementptr inbounds i8, ptr %15, i64 %12
  %17 = icmp eq ptr %16, %1
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !83
  br i1 %17, label %20, label %38

20:                                               ; preds = %10
  %21 = icmp ult i64 %19, %13
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %13)
  br label %23

23:                                               ; preds = %20, %22
  %24 = icmp eq ptr %2, %3
  br i1 %24, label %130, label %25

25:                                               ; preds = %23
  %26 = load ptr, ptr %14, align 8, !tbaa !85
  %27 = load i64, ptr %11, align 8, !tbaa !98
  %28 = getelementptr i8, ptr %26, i64 %27
  br label %29

29:                                               ; preds = %25, %29
  %30 = phi ptr [ %36, %29 ], [ %2, %25 ]
  %31 = phi ptr [ %33, %29 ], [ %28, %25 ]
  %32 = load i8, ptr %30, align 1, !tbaa !131
  store i8 %32, ptr %31, align 1, !tbaa !131
  %33 = getelementptr inbounds i8, ptr %31, i64 1
  %34 = load i64, ptr %11, align 8, !tbaa !98
  %35 = add i64 %34, 1
  store i64 %35, ptr %11, align 8, !tbaa !98
  %36 = getelementptr inbounds i8, ptr %30, i64 1
  %37 = icmp eq ptr %36, %3
  br i1 %37, label %130, label %29, !llvm.loop !168

38:                                               ; preds = %10
  %39 = icmp ugt i64 %13, %19
  br i1 %39, label %40, label %95

40:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %41 = load ptr, ptr %0, align 8, !tbaa !79
  store ptr %41, ptr %5, align 8, !tbaa !79
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %42, align 8, !tbaa !98
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %13, ptr %43, align 8, !tbaa !83
  %44 = load ptr, ptr %41, align 8, !tbaa !60
  %45 = getelementptr inbounds ptr, ptr %44, i64 2
  %46 = load ptr, ptr %45, align 8
  %47 = tail call noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(8) %41, i64 noundef %13)
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %47, ptr %48, align 8, !tbaa !85
  %49 = load i64, ptr %42, align 8, !tbaa !98
  %50 = getelementptr inbounds i8, ptr %47, i64 %49
  %51 = load ptr, ptr %14, align 8, !tbaa !85
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %50, ptr noundef %51, ptr noundef %1)
          to label %52 unwind label %81

52:                                               ; preds = %40
  %53 = load ptr, ptr %48, align 8, !tbaa !85
  %54 = load i64, ptr %42, align 8, !tbaa !98
  %55 = getelementptr inbounds i8, ptr %53, i64 %54
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %55, ptr noundef %2, ptr noundef %3)
          to label %56 unwind label %81

56:                                               ; preds = %52
  %57 = load ptr, ptr %48, align 8, !tbaa !85
  %58 = load i64, ptr %42, align 8, !tbaa !98
  %59 = getelementptr inbounds i8, ptr %57, i64 %58
  %60 = load ptr, ptr %14, align 8, !tbaa !85
  %61 = load i64, ptr %11, align 8, !tbaa !98
  %62 = getelementptr inbounds i8, ptr %60, i64 %61
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %59, ptr noundef %1, ptr noundef %62)
          to label %63 unwind label %81

63:                                               ; preds = %56
  %64 = load ptr, ptr %0, align 8, !tbaa !79
  %65 = load i64, ptr %11, align 8, !tbaa !98
  %66 = load i64, ptr %18, align 8, !tbaa !83
  %67 = load ptr, ptr %14, align 8, !tbaa !85
  %68 = load ptr, ptr %5, align 8, !tbaa !79
  store ptr %68, ptr %0, align 8, !tbaa !79
  %69 = load i64, ptr %42, align 8, !tbaa !98
  store i64 %69, ptr %11, align 8, !tbaa !98
  %70 = load i64, ptr %43, align 8, !tbaa !83
  store i64 %70, ptr %18, align 8, !tbaa !83
  %71 = load ptr, ptr %48, align 8, !tbaa !85
  store ptr %71, ptr %14, align 8, !tbaa !85
  store ptr %64, ptr %5, align 8, !tbaa !79
  store i64 %65, ptr %42, align 8, !tbaa !98
  store i64 %66, ptr %43, align 8, !tbaa !83
  store ptr %67, ptr %48, align 8, !tbaa !85
  %72 = icmp eq i64 %66, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %63
  %74 = load ptr, ptr %64, align 8, !tbaa !60
  %75 = getelementptr inbounds ptr, ptr %74, i64 3
  %76 = load ptr, ptr %75, align 8
  invoke void %76(ptr noundef nonnull align 8 dereferenceable(8) %64, ptr noundef %67)
          to label %80 unwind label %77

77:                                               ; preds = %73
  %78 = landingpad { ptr, i32 }
          catch ptr null
  %79 = extractvalue { ptr, i32 } %78, 0
  call void @__clang_call_terminate(ptr %79) #18
  unreachable

80:                                               ; preds = %63, %73
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %130

81:                                               ; preds = %56, %52, %40
  %82 = landingpad { ptr, i32 }
          cleanup
  %83 = load i64, ptr %43, align 8, !tbaa !83
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr %48, align 8, !tbaa !85
  %87 = load ptr, ptr %5, align 8, !tbaa !79
  %88 = load ptr, ptr %87, align 8, !tbaa !60
  %89 = getelementptr inbounds ptr, ptr %88, i64 3
  %90 = load ptr, ptr %89, align 8
  invoke void %90(ptr noundef nonnull align 8 dereferenceable(8) %87, ptr noundef %86)
          to label %94 unwind label %91

91:                                               ; preds = %85
  %92 = landingpad { ptr, i32 }
          catch ptr null
  %93 = extractvalue { ptr, i32 } %92, 0
  call void @__clang_call_terminate(ptr %93) #18
  unreachable

94:                                               ; preds = %81, %85
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %82

95:                                               ; preds = %38
  %96 = ptrtoint ptr %16 to i64
  %97 = ptrtoint ptr %1 to i64
  %98 = sub i64 %96, %97
  %99 = icmp ugt i64 %98, %8
  br i1 %99, label %114, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds i8, ptr %2, i64 %98
  %102 = icmp eq ptr %101, %3
  br i1 %102, label %103, label %105

103:                                              ; preds = %105, %100
  %104 = icmp eq ptr %16, %1
  br i1 %104, label %113, label %109

105:                                              ; preds = %100, %105
  %106 = phi ptr [ %107, %105 ], [ %101, %100 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %106)
  %107 = getelementptr inbounds i8, ptr %106, i64 1
  %108 = icmp eq ptr %107, %3
  br i1 %108, label %103, label %105, !llvm.loop !169

109:                                              ; preds = %103, %109
  %110 = phi ptr [ %111, %109 ], [ %1, %103 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %110)
  %111 = getelementptr inbounds i8, ptr %110, i64 1
  %112 = icmp eq ptr %111, %16
  br i1 %112, label %113, label %109, !llvm.loop !170

113:                                              ; preds = %109, %103
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %98, i1 false)
  br label %130

114:                                              ; preds = %95
  %115 = sub i64 0, %8
  %116 = getelementptr inbounds i8, ptr %16, i64 %115
  %117 = icmp eq ptr %3, %2
  br i1 %117, label %122, label %118

118:                                              ; preds = %114, %118
  %119 = phi ptr [ %120, %118 ], [ %116, %114 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %119)
  %120 = getelementptr inbounds i8, ptr %119, i64 1
  %121 = icmp eq ptr %120, %16
  br i1 %121, label %122, label %118, !llvm.loop !171

122:                                              ; preds = %118, %114
  %123 = icmp eq ptr %116, %1
  br i1 %123, label %129, label %124

124:                                              ; preds = %122
  %125 = ptrtoint ptr %116 to i64
  %126 = sub i64 %125, %97
  %127 = sub i64 0, %126
  %128 = getelementptr inbounds i8, ptr %16, i64 %127
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %128, ptr align 1 %1, i64 %126, i1 false)
  br label %129

129:                                              ; preds = %124, %122
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %8, i1 false)
  br label %130

130:                                              ; preds = %29, %23, %80, %113, %129, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !98
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !83
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %16, !prof !76

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !85
  %12 = getelementptr inbounds i8, ptr %11, i64 %5
  %13 = load i8, ptr %1, align 1, !tbaa !131
  store i8 %13, ptr %12, align 1, !tbaa !131
  %14 = load i64, ptr %4, align 8, !tbaa !98
  %15 = add i64 %14, 1
  store i64 %15, ptr %4, align 8, !tbaa !98
  br label %61

16:                                               ; preds = %2
  %17 = icmp eq i64 %5, 0
  %18 = uitofp i64 %5 to double
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 1.600000e+00, double 5.000000e-01)
  %20 = fptoui double %19 to i64
  %21 = select i1 %17, i64 1, i64 %20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %22 = load ptr, ptr %0, align 8, !tbaa !79
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef %21)
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %23 unwind label %45

23:                                               ; preds = %16
  %24 = load ptr, ptr %0, align 8, !tbaa !79
  %25 = load i64, ptr %4, align 8, !tbaa !98
  %26 = load i64, ptr %6, align 8, !tbaa !83
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !85
  %29 = load ptr, ptr %3, align 8, !tbaa !79
  store ptr %29, ptr %0, align 8, !tbaa !79
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !98
  store i64 %31, ptr %4, align 8, !tbaa !98
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !83
  store i64 %33, ptr %6, align 8, !tbaa !83
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !85
  store ptr %35, ptr %27, align 8, !tbaa !85
  store ptr %24, ptr %3, align 8, !tbaa !79
  store i64 %25, ptr %30, align 8, !tbaa !98
  store i64 %26, ptr %32, align 8, !tbaa !83
  store ptr %28, ptr %34, align 8, !tbaa !85
  %36 = icmp eq i64 %26, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %23
  %38 = load ptr, ptr %24, align 8, !tbaa !60
  %39 = getelementptr inbounds ptr, ptr %38, i64 3
  %40 = load ptr, ptr %39, align 8
  invoke void %40(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %28)
          to label %44 unwind label %41

41:                                               ; preds = %37
  %42 = landingpad { ptr, i32 }
          catch ptr null
  %43 = extractvalue { ptr, i32 } %42, 0
  call void @__clang_call_terminate(ptr %43) #18
  unreachable

44:                                               ; preds = %23, %37
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %61

45:                                               ; preds = %16
  %46 = landingpad { ptr, i32 }
          cleanup
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %48 = load i64, ptr %47, align 8, !tbaa !83
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !85
  %53 = load ptr, ptr %3, align 8, !tbaa !79
  %54 = load ptr, ptr %53, align 8, !tbaa !60
  %55 = getelementptr inbounds ptr, ptr %54, i64 3
  %56 = load ptr, ptr %55, align 8
  invoke void %56(ptr noundef nonnull align 8 dereferenceable(8) %53, ptr noundef %52)
          to label %60 unwind label %57

57:                                               ; preds = %50
  %58 = landingpad { ptr, i32 }
          catch ptr null
  %59 = extractvalue { ptr, i32 } %58, 0
  call void @__clang_call_terminate(ptr %59) #18
  unreachable

60:                                               ; preds = %45, %50
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %46

61:                                               ; preds = %44, %9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { noreturn }
attributes #20 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!58}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!35 = !{ptr @_ZN11xalanc_1_1017XalanOutputStreamC2ERN11xercesc_2_713MemoryManagerEjjb, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1017XalanOutputStreamC2ERN11xercesc_2_713MemoryManagerEjjb, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!38 = !{ptr @_ZN11xalanc_1_1017XalanOutputStreamD2Ev, ptr @_ZN11xalanc_1_1024XalanTranscodingServices17destroyTranscoderEPNS_21XalanOutputTranscoderE, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1017XalanOutputStreamD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1017XalanOutputStreamD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 2}
!41 = !{ptr @_ZN11xalanc_1_1017XalanOutputStream5writeEPKtj, ptr @_ZN11xalanc_1_1017XalanOutputStream9transcodeEPKtjRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE, i64 122386}
!42 = !{ptr @_ZN11xalanc_1_1017XalanOutputStream5writeEPKtj, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 122390}
!43 = !{ptr @_ZN11xalanc_1_1017XalanOutputStream11flushBufferEv, ptr @_ZN11xalanc_1_1017XalanOutputStream9transcodeEPKtjRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE, i64 4}
!44 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 20}
!45 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246358}
!46 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @__clang_call_terminate, i64 20}
!47 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614818}
!48 = !{ptr @_ZN11xalanc_1_1017XalanOutputStream17setOutputEncodingERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1017XalanOutputStream11flushBufferEv, i64 2}
!49 = !{ptr @_ZN11xalanc_1_1017XalanOutputStream17setOutputEncodingERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1024XalanTranscodingServices17destroyTranscoderEPNS_21XalanOutputTranscoderE, i64 2}
!50 = !{ptr @_ZN11xalanc_1_1017XalanOutputStream17setOutputEncodingERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1024XalanTranscodingServices17makeNewTranscoderERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringERNS0_5eCodeEj, i64 2}
!51 = !{ptr @_ZN11xalanc_1_1017XalanOutputStream17setOutputEncodingERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, i64 2}
!52 = !{ptr @_ZN11xalanc_1_1017XalanOutputStream17setOutputEncodingERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1024XalanTranscodingServices15getStreamPrologERKNS_14XalanDOMStringE, i64 2}
!53 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 12}
!54 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 40889}
!55 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 18}
!56 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @__clang_call_terminate, i64 21}
!57 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 2}
!58 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!59 = !{!"function_entry_count", i64 1}
!60 = !{!61, !61, i64 0}
!61 = !{!"vtable pointer", !62, i64 0}
!62 = !{!"Simple C++ TBAA"}
!63 = !{!64, !65, i64 8}
!64 = !{!"_ZTSN11xalanc_1_1017XalanOutputStreamE", !65, i64 8, !67, i64 16, !65, i64 24, !68, i64 32, !70, i64 64, !71, i64 104, !71, i64 105, !72, i64 112}
!65 = !{!"int", !66, i64 0}
!66 = !{!"omnipotent char", !62, i64 0}
!67 = !{!"any pointer", !66, i64 0}
!68 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !67, i64 0, !69, i64 8, !69, i64 16, !67, i64 24}
!69 = !{!"long", !66, i64 0}
!70 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !68, i64 0, !65, i64 32}
!71 = !{!"bool", !66, i64 0}
!72 = !{!"_ZTSN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE", !67, i64 0, !69, i64 8, !69, i64 16, !67, i64 24}
!73 = !{!64, !67, i64 16}
!74 = !{!64, !65, i64 24}
!75 = !{!68, !67, i64 0}
!76 = !{!"branch_weights", i32 1, i32 0}
!77 = !{!64, !71, i64 104}
!78 = !{!64, !71, i64 105}
!79 = !{!72, !67, i64 0}
!80 = !{!"branch_weights", i32 0, i32 1}
!81 = !{!68, !69, i64 16}
!82 = !{!"function_entry_count", i64 3}
!83 = !{!72, !69, i64 16}
!84 = !{!"branch_weights", i32 1, i32 2}
!85 = !{!72, !67, i64 24}
!86 = !{!"VP", i32 0, i64 2, i64 -7405368087501025645, i64 2}
!87 = !{!"function_entry_count", i64 42470003}
!88 = !{!"branch_weights", i32 52000, i32 42418003}
!89 = !{!68, !67, i64 24}
!90 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!91 = !{!"function_entry_count", i64 0}
!92 = !{!"function_entry_count", i64 122390}
!93 = !{!68, !69, i64 8}
!94 = !{!"branch_weights", i32 122390, i32 -550169869}
!95 = !{i8 0, i8 2}
!96 = !{}
!97 = !{!"branch_weights", i32 122390, i32 0}
!98 = !{!72, !69, i64 8}
!99 = !{!"VP", i32 0, i64 122390, i64 2701712356515704388, i64 122390}
!100 = !{!"branch_weights", i32 0, i32 122390}
!101 = !{!"function_entry_count", i64 4}
!102 = !{!"branch_weights", i32 3, i32 122390}
!103 = !{!"VP", i32 0, i64 0, i64 2701712356515704388, i64 0}
!104 = !{!"function_entry_count", i64 155828046}
!105 = !{!"branch_weights", i32 0, i32 155828046}
!106 = !{!"branch_weights", i32 133170777, i32 22657269}
!107 = !{!"branch_weights", i32 20, i32 133170757}
!108 = !{!"branch_weights", i32 1, i32 19024395}
!109 = !{!110, !110, i64 0}
!110 = !{!"short", !66, i64 0}
!111 = !{!"branch_weights", i32 19024395, i32 -26420601}
!112 = distinct !{!112, !113, !114}
!113 = !{!"llvm.loop.mustprogress"}
!114 = !{!"llvm.loop.unroll.disable"}
!115 = !{!"branch_weights", i32 20748786, i32 1908483}
!116 = !{!"VP", i32 0, i64 20748786, i64 8345045103670217670, i64 20748786}
!117 = !{!"branch_weights", i32 20748786, i32 0}
!118 = !{!"branch_weights", i32 0, i32 20748786}
!119 = !{!"VP", i32 0, i64 20748786, i64 -7405368087501025645, i64 20748786}
!120 = !{!"branch_weights", i32 0, i32 1908483}
!121 = !{!"branch_weights", i32 1, i32 1908482}
!122 = !{!"branch_weights", i32 1908482, i32 49797853}
!123 = distinct !{!123, !113, !114}
!124 = !{!"branch_weights", i32 1908482, i32 1}
!125 = distinct !{!125, !113, !114}
!126 = !{!"VP", i32 1, i64 1908483, i64 2, i64 1908483}
!127 = distinct !{!127, !113, !114}
!128 = !{!"branch_weights", i32 122391, i32 122390}
!129 = !{!"branch_weights", i32 122389, i32 1}
!130 = !{!"branch_weights", i32 1, i32 122388}
!131 = !{!66, !66, i64 0}
!132 = !{!"branch_weights", i32 122388, i32 62663681}
!133 = distinct !{!133, !113, !114}
!134 = !{!65, !65, i64 0}
!135 = !{!"VP", i32 0, i64 122390, i64 5922454005474667761, i64 122390}
!136 = distinct !{!136, !113, !114}
!137 = !{!"function_entry_count", i64 2}
!138 = !{!139, !139, i64 0}
!139 = !{!"_ZTSN11xalanc_1_1024XalanTranscodingServices5eCodeE", !66, i64 0}
!140 = !{!"branch_weights", i32 0, i32 0, i32 2}
!141 = !{!"branch_weights", i32 0, i32 2}
!142 = !{!70, !65, i64 32}
!143 = !{!"branch_weights", i32 2, i32 0}
!144 = distinct !{!144, !113, !114}
!145 = !{!"function_entry_count", i64 41614}
!146 = !{!"branch_weights", i32 0, i32 41614}
!147 = !{!"branch_weights", i32 12, i32 41602}
!148 = !{!"branch_weights", i32 5, i32 7}
!149 = !{!"VP", i32 0, i64 7, i64 -7405368087501025645, i64 7}
!150 = !{!"branch_weights", i32 354, i32 41248}
!151 = !{!"branch_weights", i32 40889, i32 359}
!152 = !{!"branch_weights", i32 40581, i32 1021}
!153 = !{!"VP", i32 1, i64 1021, i64 4, i64 788, i64 65, i64 202, i64 6, i64 12, i64 17, i64 10}
!154 = !{!"function_entry_count", i64 22}
!155 = !{!"branch_weights", i32 64551590, i32 18}
!156 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!157 = !{!"branch_weights", i32 18, i32 0}
!158 = !{!"branch_weights", i32 4, i32 64551586}
!159 = !{!"VP", i32 0, i64 21, i64 8345045103670217670, i64 21}
!160 = !{!"function_entry_count", i64 64551586}
!161 = !{!"VP", i32 0, i64 17, i64 8345045103670217670, i64 17}
!162 = !{!"VP", i32 0, i64 64551564, i64 8345045103670217670, i64 64551564}
!163 = !{!"branch_weights", i32 42418193, i32 22133393}
!164 = !{!"VP", i32 0, i64 22133393, i64 -7405368087501025645, i64 22133393}
!165 = !{!"function_entry_count", i64 124150652}
!166 = !{!"branch_weights", i32 124150652, i32 0}
!167 = !{!"VP", i32 0, i64 2, i64 8345045103670217670, i64 2}
!168 = distinct !{!168, !113, !114}
!169 = distinct !{!169, !113, !114}
!170 = distinct !{!170, !113, !114}
!171 = distinct !{!171, !113, !114}
