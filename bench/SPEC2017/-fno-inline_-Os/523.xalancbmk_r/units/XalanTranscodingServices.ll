; ModuleID = 'XalanTranscodingServices.cpp'
source_filename = "XalanTranscodingServices.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanOutputTranscoder" = type { ptr, ptr }
%"class.xalanc_1_10::XalanTranscodingServices::UnrepresentableCharacterException" = type { %"class.xalanc_1_10::XSLException", i32, [4 x i8], %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::XSLException" = type { ptr, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", i64, i64 }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }

$_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1021XalanOutputTranscoder16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtS1_ = comdat any

$_ZN11xalanc_1_106c_wstrEPKt = comdat any

$_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringEPKt = comdat any

$_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZNK11xalanc_1_1024XalanTranscodingServices33UnrepresentableCharacterException7getTypeEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5c_strEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$_ZN11xalanc_1_106lengthEPKt = comdat any

$_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt = comdat any

$_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt = comdat any

$_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

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

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1024XalanTranscodingServices17makeNewTranscoderERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringERNS0_5eCodeEj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %2, i32 noundef %3) local_unnamed_addr #1 align 2 !prof !81 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !tbaa !82
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1024XalanTranscodingServices15encodingIsUTF16ERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %1) #13
  br i1 %6, label %7, label %9, !prof !86

7:                                                ; preds = %4
  store i32 0, ptr %2, align 4, !tbaa !87
  %8 = tail call noundef ptr @_ZN11xalanc_1_1020XalanUTF16Transcoder6createERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  br label %18

9:                                                ; preds = %4
  %10 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !89
  %11 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %1) #13
  %12 = call noundef ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForEPKtRNS0_5CodesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %11, ptr noundef nonnull align 4 dereferenceable(4) %5, i32 noundef %3, ptr noundef nonnull %0) #13
  %13 = load i32, ptr %5, align 4, !tbaa !82
  %14 = call fastcc noundef i32 @_ZN11xalanc_1_10L13translateCodeEN11xercesc_2_715XMLTransService5CodesE(i32 noundef %13) #13, !range !91
  store i32 %14, ptr %2, align 4, !tbaa !87
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18, !prof !92

16:                                               ; preds = %9
  %17 = call noundef ptr @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapper6createERN11xercesc_2_713MemoryManagerERNS1_13XMLTranscoderE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %12) #13
  br label %18

18:                                               ; preds = %9, %16, %7
  %19 = phi ptr [ %8, %7 ], [ %17, %16 ], [ null, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret ptr %19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1024XalanTranscodingServices15encodingIsUTF16ERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 align 2 !prof !81 {
  %2 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1024XalanTranscodingServices15encodingIsUTF16EPKt(ptr noundef %2) #13
  ret i1 %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1020XalanUTF16Transcoder6createERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForEPKtRNS0_5CodesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat !prof !93 {
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @_ZN11xalanc_1_10L13translateCodeEN11xercesc_2_715XMLTransService5CodesE(i32 noundef %0) unnamed_addr #4 !prof !81 !PGOFuncName !94 {
  %2 = tail call i32 @llvm.umin.i32(i32 %0, i32 3)
  ret i32 %2
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapper6createERN11xercesc_2_713MemoryManagerERNS1_13XMLTranscoderE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1024XalanTranscodingServices17destroyTranscoderEPNS_21XalanOutputTranscoderE(ptr noundef %0) local_unnamed_addr #1 align 2 !prof !95 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3, !prof !96

3:                                                ; preds = %1
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1021XalanOutputTranscoder16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  %5 = load ptr, ptr %0, align 8, !tbaa !97
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(16) %0) #14
  %7 = load ptr, ptr %4, align 8, !tbaa !97
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %0) #13
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1021XalanOutputTranscoder16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputTranscoder", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !99
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1024XalanTranscodingServices14encodingIsUTF8EPKt(ptr noundef %0) local_unnamed_addr #1 align 2 !prof !95 {
  %2 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrEPKt(ptr noundef %0) #13
  %3 = tail call noundef i32 @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtS1_(ptr noundef %2, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices12s_utf8StringE) #13
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !101 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %0) #13
  %4 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %1) #13
  %5 = tail call noundef i32 @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtjS1_j(ptr noundef %0, i32 noundef %3, ptr noundef %1, i32 noundef %4) #13
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_106c_wstrEPKt(ptr noundef %0) local_unnamed_addr #5 comdat !prof !102 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1024XalanTranscodingServices14encodingIsUTF8ERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 align 2 !prof !95 {
  %2 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1024XalanTranscodingServices14encodingIsUTF8EPKt(ptr noundef %2) #13
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1024XalanTranscodingServices15encodingIsUTF16EPKt(ptr noundef %0) local_unnamed_addr #1 align 2 !prof !81 {
  %2 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrEPKt(ptr noundef %0) #13
  %3 = tail call noundef i32 @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtS1_(ptr noundef %2, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices13s_utf16StringE) #13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %13, label %5, !prof !86

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrEPKt(ptr noundef %0) #13
  %7 = tail call noundef i32 @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtS1_(ptr noundef %6, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices15s_utf16LEStringE) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9, !prof !86

9:                                                ; preds = %5
  %10 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrEPKt(ptr noundef %0) #13
  %11 = tail call noundef i32 @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtS1_(ptr noundef %10, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices15s_utf16BEStringE) #13
  %12 = icmp eq i32 %11, 0
  br label %13

13:                                               ; preds = %9, %5, %1
  %14 = phi i1 [ true, %5 ], [ true, %1 ], [ %12, %9 ]
  ret i1 %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1024XalanTranscodingServices15encodingIsUTF32EPKt(ptr noundef %0) local_unnamed_addr #1 align 2 !prof !103 {
  %2 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrEPKt(ptr noundef %0) #13
  %3 = tail call noundef i32 @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtS1_(ptr noundef %2, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices13s_utf32StringE) #13
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1024XalanTranscodingServices15encodingIsUTF32ERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 align 2 !prof !103 {
  %2 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1024XalanTranscodingServices15encodingIsUTF32EPKt(ptr noundef %2) #13
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZN11xalanc_1_1024XalanTranscodingServices15getStreamPrologERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 align 2 !prof !81 {
  %2 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  %3 = tail call noundef i32 @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtS1_(ptr noundef %2, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices13s_utf16StringE) #13
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, ptr @_ZN11xalanc_1_1024XalanTranscodingServices20s_UTF16ByteOrderMarkE, ptr @_ZN11xalanc_1_1024XalanTranscodingServices20s_dummyByteOrderMarkE, !prof !86
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i16 @_ZN11xalanc_1_1024XalanTranscodingServices24getMaximumCharacterValueERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 align 2 !prof !104 {
  %2 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  %3 = tail call noundef i32 @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtS1_(ptr noundef %2, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices12s_utf8StringE) #13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %30, label %5, !prof !105

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  %7 = tail call noundef i32 @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtS1_(ptr noundef %6, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices13s_utf16StringE) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %5
  %10 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  %11 = tail call noundef i32 @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtS1_(ptr noundef %10, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices16s_iso88591StringE) #13
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %9
  %14 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  %15 = tail call noundef i32 @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtS1_(ptr noundef %14, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices15s_utf16LEStringE) #13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %13
  %18 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  %19 = tail call noundef i32 @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtS1_(ptr noundef %18, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices15s_utf16BEStringE) #13
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  %23 = tail call noundef i32 @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtS1_(ptr noundef %22, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices13s_utf32StringE) #13
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  %27 = tail call noundef i32 @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtS1_(ptr noundef %26, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices16s_shiftJISStringE) #13
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i16 -1, i16 127
  br label %30

30:                                               ; preds = %25, %13, %17, %21, %9, %1, %5
  %31 = phi i16 [ -1, %5 ], [ -1, %1 ], [ 255, %9 ], [ -1, %21 ], [ -1, %17 ], [ -1, %13 ], [ %29, %25 ]
  ret i16 %31
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i16 @_ZN11xalanc_1_1024XalanTranscodingServices24getMaximumCharacterValueEv() local_unnamed_addr #4 align 2 !prof !104 {
  ret i16 127
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1024XalanTranscodingServices18getBytesEqualCharsERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 align 2 !prof !103 {
  %2 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices13s_asciiStringE) #13
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices15s_usASCIIStringE) #13
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices19s_windows1250StringE) #13
  br label %7

7:                                                ; preds = %5, %3, %1
  %8 = phi i1 [ true, %3 ], [ true, %1 ], [ %6, %5 ]
  ret i1 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !106 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1024XalanTranscodingServices33UnrepresentableCharacterExceptionC2EjRKNS_14XalanDOMStringERS2_(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !103 {
  %5 = zext i32 %1 to i64
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1026UnsignedLongToHexDOMStringEmRNS_14XalanDOMStringE(i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(36) %3) #13
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 176, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(36) %2) #13
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(36) %3) #13
  tail call void @_ZN11xalanc_1_1012XSLExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #13
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1024XalanTranscodingServices33UnrepresentableCharacterExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !97
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanTranscodingServices::UnrepresentableCharacterException", ptr %0, i64 0, i32 1
  store i32 %1, ptr %9, align 8, !tbaa !107
  %10 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(36) %3) #13
          to label %11 unwind label %14

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanTranscodingServices::UnrepresentableCharacterException", ptr %0, i64 0, i32 3
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %12, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 0, i32 noundef -1) #13
          to label %13 unwind label %14

13:                                               ; preds = %11
  ret void

14:                                               ; preds = %11, %4
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1012XSLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #14
  resume { ptr, i32 } %15
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1026UnsignedLongToHexDOMStringEmRNS_14XalanDOMStringE(i64 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 !prof !114 {
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %2
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1012XSLExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1012XSLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1024XalanTranscodingServices33UnrepresentableCharacterExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #5 align 2 !prof !103 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1024XalanTranscodingServices33UnrepresentableCharacterExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !97
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanTranscodingServices::UnrepresentableCharacterException", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %2) #14
  tail call void @_ZN11xalanc_1_1012XSLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #5 comdat align 2 !prof !115 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1024XalanTranscodingServices33UnrepresentableCharacterExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #5 align 2 {
  tail call void @_ZN11xalanc_1_1024XalanTranscodingServices33UnrepresentableCharacterExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) #14
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1021XalanOutputTranscoderC2ERN11xercesc_2_713MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #7 align 2 !prof !81 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1021XalanOutputTranscoderE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !97
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputTranscoder", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1021XalanOutputTranscoderD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #4 align 2 !prof !81 {
  ret void
}

; Function Attrs: mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xalanc_1_1021XalanOutputTranscoderD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 {
  tail call void @llvm.trap() #16
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1024XalanTranscodingServices10initializeERN11xercesc_2_713MemoryManagerE(ptr nocapture noundef nonnull readnone align 8 dereferenceable(8) %0) local_unnamed_addr #4 align 2 !prof !104 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1024XalanTranscodingServices9terminateEv() local_unnamed_addr #4 align 2 !prof !104 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1024XalanTranscodingServices33UnrepresentableCharacterException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #5 comdat align 2 !prof !103 {
  ret ptr @_ZN11xalanc_1_1024XalanTranscodingServices33UnrepresentableCharacterException6m_typeE
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 !prof !116 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  br i1 %2, label %5, label %3, !prof !117

3:                                                ; preds = %1
  %4 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #13
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #5 comdat align 2 !prof !118 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !119 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !120
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !121 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !122
  %5 = getelementptr inbounds i16, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 !prof !123 {
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtjS1_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %0) local_unnamed_addr #5 comdat !prof !124 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ]
  %4 = load i16, ptr %3, align 2, !tbaa !125
  %5 = icmp eq i16 %4, 0
  %6 = getelementptr inbounds i16, ptr %3, i64 1
  br i1 %5, label %7, label %2, !prof !127, !llvm.loop !128

7:                                                ; preds = %2
  %8 = ptrtoint ptr %3 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = lshr exact i64 %10, 1
  %12 = trunc i64 %11 to i32
  ret i32 %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 comdat !prof !130 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %0) #13
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !130 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #13
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !130 {
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  %4 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_(ptr noundef %3, ptr noundef %1) #13
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !131 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %0) #13
  %4 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1) #13
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %0, i32 noundef %3, ptr noundef %1, i32 noundef %4) #13
  ret i1 %5
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 !prof !132 {
  %2 = load ptr, ptr %0, align 8, !tbaa !133
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !135
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !136

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #13
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !122
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #13
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #16
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !137 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !138

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #13
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !139, !llvm.loop !140

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 !prof !141 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !122
  ret ptr %3
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !142 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !137 {
  %3 = load ptr, ptr %0, align 8, !tbaa !133
  %4 = load ptr, ptr %3, align 8, !tbaa !97
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #5 comdat align 2 !prof !143 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 !prof !144 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !122
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !120
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #10 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize }
attributes #15 = { builtin nounwind optsize }
attributes #16 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!80}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79}
!35 = !{ptr @_ZN11xalanc_1_1024XalanTranscodingServices17makeNewTranscoderERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringERNS0_5eCodeEj, ptr @_ZN11xalanc_1_1024XalanTranscodingServices15encodingIsUTF16ERKNS_14XalanDOMStringE, i64 2}
!36 = !{ptr @_ZN11xalanc_1_1024XalanTranscodingServices17makeNewTranscoderERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringERNS0_5eCodeEj, ptr @_ZN11xalanc_1_1020XalanUTF16Transcoder6createERN11xercesc_2_713MemoryManagerE, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1024XalanTranscodingServices17makeNewTranscoderERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringERNS0_5eCodeEj, ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE, i64 2}
!38 = !{ptr @_ZN11xalanc_1_1024XalanTranscodingServices17makeNewTranscoderERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringERNS0_5eCodeEj, ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForEPKtRNS0_5CodesEjPNS_13MemoryManagerE, i64 2}
!39 = !{ptr @_ZN11xalanc_1_1024XalanTranscodingServices17makeNewTranscoderERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringERNS0_5eCodeEj, ptr @_ZN11xalanc_1_10L13translateCodeEN11xercesc_2_715XMLTransService5CodesE, i64 2}
!40 = !{ptr @_ZN11xalanc_1_1024XalanTranscodingServices17makeNewTranscoderERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringERNS0_5eCodeEj, ptr @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapper6createERN11xercesc_2_713MemoryManagerERNS1_13XMLTranscoderE, i64 1}
!41 = !{ptr @_ZN11xalanc_1_1024XalanTranscodingServices15encodingIsUTF16ERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE, i64 2}
!42 = !{ptr @_ZN11xalanc_1_1024XalanTranscodingServices15encodingIsUTF16ERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1024XalanTranscodingServices15encodingIsUTF16EPKt, i64 2}
!43 = !{ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 12093723}
!44 = !{ptr @_ZN11xalanc_1_1024XalanTranscodingServices17destroyTranscoderEPNS_21XalanOutputTranscoderE, ptr @_ZN11xalanc_1_1021XalanOutputTranscoder16getMemoryManagerEv, i64 2}
!45 = !{ptr @_ZN11xalanc_1_1024XalanTranscodingServices14encodingIsUTF8EPKt, ptr @_ZN11xalanc_1_106c_wstrEPKt, i64 3}
!46 = !{ptr @_ZN11xalanc_1_1024XalanTranscodingServices14encodingIsUTF8EPKt, ptr @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtS1_, i64 3}
!47 = !{ptr @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtS1_, ptr @_ZN11xalanc_1_106lengthEPKt, i64 12761312}
!48 = !{ptr @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtS1_, ptr @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtjS1_j, i64 6380656}
!49 = !{ptr @_ZN11xalanc_1_1024XalanTranscodingServices14encodingIsUTF8ERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE, i64 3}
!50 = !{ptr @_ZN11xalanc_1_1024XalanTranscodingServices14encodingIsUTF8ERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1024XalanTranscodingServices14encodingIsUTF8EPKt, i64 3}
!51 = !{ptr @_ZN11xalanc_1_1024XalanTranscodingServices15encodingIsUTF16EPKt, ptr @_ZN11xalanc_1_106c_wstrEPKt, i64 5}
!52 = !{ptr @_ZN11xalanc_1_1024XalanTranscodingServices15encodingIsUTF16EPKt, ptr @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtS1_, i64 5}
!53 = !{ptr @_ZN11xalanc_1_1024XalanTranscodingServices15getStreamPrologERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE, i64 2}
!54 = !{ptr @_ZN11xalanc_1_1024XalanTranscodingServices15getStreamPrologERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtS1_, i64 2}
!55 = !{ptr @_ZN11xalanc_1_1024XalanTranscodingServices24getMaximumCharacterValueERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE, i64 1}
!56 = !{ptr @_ZN11xalanc_1_1024XalanTranscodingServices24getMaximumCharacterValueERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtS1_, i64 1}
!57 = !{ptr @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringEPKt, ptr @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE, i64 1349}
!58 = !{ptr @_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE16getMemoryManagerEv, i64 832918}
!59 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!60 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 967143541}
!61 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, i64 967143541}
!62 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm, i64 563515055}
!63 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 1083116306}
!64 = !{ptr @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt, i64 1899}
!65 = !{ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, i64 1899}
!66 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 1899}
!67 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, i64 1899}
!68 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 807446}
!69 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j, i64 403723}
!70 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!71 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!72 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!73 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!74 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!75 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!76 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!77 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!78 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!79 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!80 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!81 = !{!"function_entry_count", i64 2}
!82 = !{!83, !83, i64 0}
!83 = !{!"_ZTSN11xercesc_2_715XMLTransService5CodesE", !84, i64 0}
!84 = !{!"omnipotent char", !85, i64 0}
!85 = !{!"Simple C++ TBAA"}
!86 = !{!"branch_weights", i32 1, i32 3}
!87 = !{!88, !88, i64 0}
!88 = !{!"_ZTSN11xalanc_1_1024XalanTranscodingServices5eCodeE", !84, i64 0}
!89 = !{!90, !90, i64 0}
!90 = !{!"any pointer", !84, i64 0}
!91 = !{i32 0, i32 4}
!92 = !{!"branch_weights", i32 3, i32 1}
!93 = !{!"function_entry_count", i64 12093723}
!94 = !{!"XalanTranscodingServices.cpp:_ZN11xalanc_1_10L13translateCodeEN11xercesc_2_715XMLTransService5CodesE"}
!95 = !{!"function_entry_count", i64 3}
!96 = !{!"branch_weights", i32 2, i32 3}
!97 = !{!98, !98, i64 0}
!98 = !{!"vtable pointer", !85, i64 0}
!99 = !{!100, !90, i64 8}
!100 = !{!"_ZTSN11xalanc_1_1021XalanOutputTranscoderE", !90, i64 8}
!101 = !{!"function_entry_count", i64 6380656}
!102 = !{!"function_entry_count", i64 75103}
!103 = !{!"function_entry_count", i64 0}
!104 = !{!"function_entry_count", i64 1}
!105 = !{!"branch_weights", i32 2, i32 1}
!106 = !{!"function_entry_count", i64 1349}
!107 = !{!108, !113, i64 104}
!108 = !{!"_ZTSN11xalanc_1_1024XalanTranscodingServices33UnrepresentableCharacterExceptionE", !109, i64 0, !113, i64 104, !110, i64 112}
!109 = !{!"_ZTSN11xalanc_1_1012XSLExceptionE", !110, i64 8, !110, i64 48, !112, i64 88, !112, i64 96}
!110 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !111, i64 0, !113, i64 32}
!111 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !90, i64 0, !112, i64 8, !112, i64 16, !90, i64 24}
!112 = !{!"long", !84, i64 0}
!113 = !{!"int", !84, i64 0}
!114 = !{!"function_entry_count", i64 832918}
!115 = !{!"function_entry_count", i64 43398227}
!116 = !{!"function_entry_count", i64 967143541}
!117 = !{!"branch_weights", i32 403628487, i32 563515056}
!118 = !{!"function_entry_count", i64 3070433834}
!119 = !{!"function_entry_count", i64 1083116306}
!120 = !{!111, !112, i64 8}
!121 = !{!"function_entry_count", i64 565220908}
!122 = !{!111, !90, i64 24}
!123 = !{!"function_entry_count", i64 6521798493}
!124 = !{!"function_entry_count", i64 21552397}
!125 = !{!126, !126, i64 0}
!126 = !{!"short", !84, i64 0}
!127 = !{!"branch_weights", i32 21552398, i32 128560690}
!128 = distinct !{!128, !129}
!129 = !{!"llvm.loop.mustprogress"}
!130 = !{!"function_entry_count", i64 1899}
!131 = !{!"function_entry_count", i64 403723}
!132 = !{!"function_entry_count", i64 833358}
!133 = !{!111, !90, i64 0}
!134 = !{!"function_entry_count", i64 128698679}
!135 = !{!111, !112, i64 16}
!136 = !{!"branch_weights", i32 43398290, i32 85300391}
!137 = !{!"function_entry_count", i64 85300390}
!138 = !{!"branch_weights", i32 1, i32 12185770}
!139 = !{!"branch_weights", i32 12185770, i32 -193930396}
!140 = distinct !{!140, !129}
!141 = !{!"function_entry_count", i64 227375739}
!142 = !{!"function_entry_count", i64 568333389}
!143 = !{!"function_entry_count", i64 30137156660}
!144 = !{!"function_entry_count", i64 825654971}
