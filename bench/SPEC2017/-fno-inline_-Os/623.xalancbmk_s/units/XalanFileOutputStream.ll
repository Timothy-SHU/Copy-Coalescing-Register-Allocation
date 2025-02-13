; ModuleID = 'XalanFileOutputStream.cpp'
source_filename = "XalanFileOutputStream.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanFileOutputStream" = type { %"class.xalanc_1_10::XalanOutputStream", %"class.xalanc_1_10::XalanDOMString", ptr }
%"class.xalanc_1_10::XalanOutputStream" = type { ptr, i32, ptr, i32, %"class.xalanc_1_10::XalanVector", %"class.xalanc_1_10::XalanDOMString", i8, i8, %"class.xalanc_1_10::XalanVector.0" }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanFileOutputStream, false>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanFileOutputStream, false>::MemMgrAutoPtrData" = type { %"struct.std::pair" }
%"struct.std::pair" = type { ptr, ptr }

$_ZNK11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenException7getTypeEv = comdat any

$_ZNK11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteException7getTypeEv = comdat any

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1024TranscodeToLocalCodePageERKNS_14XalanDOMStringERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb = comdat any

$_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5emptyEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEixEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8allocateEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5c_strEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyEPcS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10deallocateEPc = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyERc = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XalanFileOutputStreamELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XalanFileOutputStreamELb0EE3getEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XalanFileOutputStreamELb0EE7releaseEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XalanFileOutputStreamELb0EED2Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XalanFileOutputStreamELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1021XalanFileOutputStreamEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XalanFileOutputStreamELb0EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XalanFileOutputStreamELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XalanFileOutputStreamELb0EE17MemMgrAutoPtrData10deallocateEv = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XalanFileOutputStreamELb0EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

$_ZN11xalanc_1_1017XalanOutputStream16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv = comdat any

@_ZTVN11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenExceptionE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenExceptionE, ptr @_ZN11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenExceptionD2Ev, ptr @_ZN11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenExceptionD0Ev, ptr @_ZNK11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenException7getTypeEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenExceptionE = dso_local constant [75 x i8] c"N11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenExceptionE\00", align 1
@_ZTIN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionE = external constant ptr
@_ZTIN11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenExceptionE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenExceptionE, ptr @_ZTIN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionE }, align 8
@_ZTVN11xalanc_1_1021XalanFileOutputStreamE = dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1021XalanFileOutputStreamE, ptr @_ZN11xalanc_1_1021XalanFileOutputStreamD2Ev, ptr @_ZN11xalanc_1_1021XalanFileOutputStreamD0Ev, ptr @_ZN11xalanc_1_1017XalanOutputStream7newlineEv, ptr @_ZNK11xalanc_1_1017XalanOutputStream16getNewlineStringEv, ptr @_ZN11xalanc_1_1021XalanFileOutputStream9writeDataEPKcj, ptr @_ZN11xalanc_1_1021XalanFileOutputStream7doFlushEv] }, align 8
@_ZTSN11xalanc_1_1021XalanFileOutputStreamE = dso_local constant [39 x i8] c"N11xalanc_1_1021XalanFileOutputStreamE\00", align 1
@_ZTIN11xalanc_1_1017XalanOutputStreamE = external constant ptr
@_ZTIN11xalanc_1_1021XalanFileOutputStreamE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1021XalanFileOutputStreamE, ptr @_ZTIN11xalanc_1_1017XalanOutputStreamE }, align 8
@_ZTVN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionE, ptr @_ZN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionD2Ev, ptr @_ZN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionD0Ev, ptr @_ZNK11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteException7getTypeEv] }, align 8
@_ZTSN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionE = dso_local constant [76 x i8] c"N11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionE\00", align 1
@_ZTIN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionE, ptr @_ZTIN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionE }, align 8
@_ZN11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenException6m_typeE = dso_local constant [35 x i16] [i16 88, i16 97, i16 108, i16 97, i16 110, i16 70, i16 105, i16 108, i16 101, i16 79, i16 117, i16 116, i16 112, i16 117, i16 116, i16 83, i16 116, i16 114, i16 101, i16 97, i16 109, i16 79, i16 112, i16 101, i16 110, i16 69, i16 120, i16 99, i16 101, i16 112, i16 116, i16 105, i16 111, i16 110, i16 0], align 16
@_ZN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteException6m_typeE = dso_local constant [36 x i16] [i16 88, i16 97, i16 108, i16 97, i16 110, i16 70, i16 105, i16 108, i16 101, i16 79, i16 117, i16 116, i16 112, i16 117, i16 116, i16 83, i16 116, i16 114, i16 101, i16 97, i16 109, i16 87, i16 114, i16 105, i16 116, i16 101, i16 69, i16 120, i16 99, i16 101, i16 112, i16 116, i16 105, i16 111, i16 110, i16 0], align 16
@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_1021XalanFileOutputStreamC1ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerEj = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32), ptr @_ZN11xalanc_1_1021XalanFileOutputStreamC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerEj
@_ZN11xalanc_1_1021XalanFileOutputStreamD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1021XalanFileOutputStreamD2Ev
@_ZN11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenExceptionC1ERKNS_14XalanDOMStringEiRS2_ = dso_local unnamed_addr alias void (ptr, ptr, i32, ptr), ptr @_ZN11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenExceptionC2ERKNS_14XalanDOMStringEiRS2_
@_ZN11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenExceptionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenExceptionD2Ev
@_ZN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionC1ERKNS_14XalanDOMStringEiRS2_ = dso_local unnamed_addr alias void (ptr, ptr, i32, ptr), ptr @_ZN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionC2ERKNS_14XalanDOMStringEiRS2_
@_ZN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 comdat align 2 !prof !65 {
  ret ptr @_ZN11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenException6m_typeE
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XalanFileOutputStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_1021XalanFileOutputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017XalanOutputStream7newlineEv(ptr noundef nonnull align 8 dereferenceable(144)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1017XalanOutputStream16getNewlineStringEv(ptr noundef nonnull align 8 dereferenceable(144)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XalanFileOutputStream9writeDataEPKcj(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = zext i32 %2 to i64
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanFileOutputStream", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = tail call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %5, ptr noundef %7) #11
  %9 = icmp eq i64 %8, %5
  br i1 %9, label %23, label %10

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #12
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1017XalanOutputStream16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(144) %0) #11
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %11) #11
  %12 = call ptr @__cxa_allocate_exception(i64 104) #12
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanFileOutputStream", ptr %0, i64 0, i32 1
  %14 = tail call ptr @__errno_location() #13
  %15 = load i32, ptr %14, align 4, !tbaa !78
  invoke void @_ZN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionC2ERKNS_14XalanDOMStringEiRS2_(ptr noundef nonnull align 8 dereferenceable(104) %12, ptr noundef nonnull align 8 dereferenceable(36) %13, i32 noundef %15, ptr noundef nonnull align 8 dereferenceable(36) %4) #11
          to label %16 unwind label %17

16:                                               ; preds = %10
  invoke void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionE, ptr nonnull @_ZN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionD2Ev) #14
          to label %24 unwind label %19

17:                                               ; preds = %10
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %12) #12
  br label %21

19:                                               ; preds = %16
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi { ptr, i32 } [ %20, %19 ], [ %18, %17 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #12
  resume { ptr, i32 } %22

23:                                               ; preds = %3
  ret void

24:                                               ; preds = %16
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XalanFileOutputStream7doFlushEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %2 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanFileOutputStream", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = tail call i32 @fflush(ptr noundef %4) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #12
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1017XalanOutputStream16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(144) %0) #11
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %8) #11
  %9 = call ptr @__cxa_allocate_exception(i64 104) #12
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanFileOutputStream", ptr %0, i64 0, i32 1
  %11 = tail call ptr @__errno_location() #13
  %12 = load i32, ptr %11, align 4, !tbaa !78
  invoke void @_ZN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionC2ERKNS_14XalanDOMStringEiRS2_(ptr noundef nonnull align 8 dereferenceable(104) %9, ptr noundef nonnull align 8 dereferenceable(36) %10, i32 noundef %12, ptr noundef nonnull align 8 dereferenceable(36) %2) #11
          to label %13 unwind label %14

13:                                               ; preds = %7
  invoke void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionE, ptr nonnull @_ZN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionD2Ev) #14
          to label %21 unwind label %16

14:                                               ; preds = %7
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %9) #12
  br label %18

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %2) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #12
  resume { ptr, i32 } %19

20:                                               ; preds = %1
  ret void

21:                                               ; preds = %13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 comdat align 2 !prof !65 {
  ret ptr @_ZN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteException6m_typeE
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XalanFileOutputStreamC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  tail call void @_ZN11xalanc_1_1017XalanOutputStreamC2ERN11xercesc_2_713MemoryManagerEjjb(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3, i32 noundef 1024, i1 noundef zeroext true) #11
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1021XalanFileOutputStreamE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !79
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanFileOutputStream", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0, i32 noundef -1) #11
          to label %7 unwind label %18

7:                                                ; preds = %4
  %8 = invoke fastcc noundef ptr @_ZN11xalanc_1_10L8openFileERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #11
          to label %9 unwind label %20

9:                                                ; preds = %7
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanFileOutputStream", ptr %0, i64 0, i32 2
  store ptr %8, ptr %10, align 8, !tbaa !66
  %11 = icmp eq ptr %8, null
  br i1 %11, label %12, label %32

12:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #12
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %2) #11
          to label %13 unwind label %22

13:                                               ; preds = %12
  %14 = call ptr @__cxa_allocate_exception(i64 104) #12
  %15 = tail call ptr @__errno_location() #13
  %16 = load i32, ptr %15, align 4, !tbaa !78
  invoke void @_ZN11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenExceptionC2ERKNS_14XalanDOMStringEiRS2_(ptr noundef nonnull align 8 dereferenceable(104) %14, ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %16, ptr noundef nonnull align 8 dereferenceable(36) %5) #11
          to label %17 unwind label %24

17:                                               ; preds = %13
  invoke void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTIN11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenExceptionE, ptr nonnull @_ZN11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenExceptionD2Ev) #14
          to label %37 unwind label %26

18:                                               ; preds = %4
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %35

20:                                               ; preds = %7
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %33

22:                                               ; preds = %12
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %30

24:                                               ; preds = %13
  %25 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %14) #12
  br label %28

26:                                               ; preds = %17
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi { ptr, i32 } [ %27, %26 ], [ %25, %24 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #9
  br label %30

30:                                               ; preds = %28, %22
  %31 = phi { ptr, i32 } [ %29, %28 ], [ %23, %22 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #12
  br label %33

32:                                               ; preds = %9
  ret void

33:                                               ; preds = %30, %20
  %34 = phi { ptr, i32 } [ %31, %30 ], [ %21, %20 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %6) #9
  br label %35

35:                                               ; preds = %33, %18
  %36 = phi { ptr, i32 } [ %34, %33 ], [ %19, %18 ]
  call void @_ZN11xalanc_1_1017XalanOutputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) #9
  resume { ptr, i32 } %36

37:                                               ; preds = %17
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017XalanOutputStreamC2ERN11xercesc_2_713MemoryManagerEjjb(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noalias noundef ptr @_ZN11xalanc_1_10L8openFileERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 personality ptr @__gxx_personality_v0 !prof !65 !PGOFuncName !81 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #12
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0) #11
  %4 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageERKNS_14XalanDOMStringERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext true) #11
          to label %5 unwind label %7

5:                                                ; preds = %2
  %6 = call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  br i1 %6, label %12, label %9

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #12
  resume { ptr, i32 } %8

9:                                                ; preds = %5
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0) #11
  %11 = call noalias ptr @fopen(ptr noundef nonnull %10, ptr noundef nonnull @.str) #11
  br label %12

12:                                               ; preds = %5, %9
  %13 = phi ptr [ %11, %9 ], [ null, %5 ]
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #12
  ret ptr %13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #0 comdat align 2 !prof !82 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017XalanOutputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(144)) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #2 comdat align 2 !prof !83 {
  store ptr %1, ptr %0, align 8, !tbaa !84
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !85
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !86
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !87

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #11
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !88
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageERKNS_14XalanDOMStringERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #2 comdat !prof !65 {
  %4 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #11
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageEPKtRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) #11
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !65 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !85
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !89 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !88
  %5 = getelementptr inbounds i8, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !90 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !86
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !91

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyEPcS4_(ptr noundef %6, ptr noundef %7) #11
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !88
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10deallocateEPc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #11
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !92 {
  %3 = load ptr, ptr %0, align 8, !tbaa !84
  %4 = load ptr, ptr %3, align 8, !tbaa !79
  %5 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %1) #11
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !93 {
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageEPKtRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #2 comdat align 2 !prof !94 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #11
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  br i1 %2, label %5, label %3, !prof !95

3:                                                ; preds = %1
  %4 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #11
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !96 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !97 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !98
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !99 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !100
  %5 = getelementptr inbounds i16, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !101 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyEPcS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !92 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !102

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyERc(ptr noundef nonnull align 1 dereferenceable(1) %5) #11
  %6 = getelementptr inbounds i8, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !103, !llvm.loop !104

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !83 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  ret ptr %3
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !83 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10deallocateEPc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !92 {
  %3 = load ptr, ptr %0, align 8, !tbaa !84
  %4 = load ptr, ptr %3, align 8, !tbaa !79
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyERc(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 !prof !106 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !107 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !85
  %6 = getelementptr inbounds i8, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !109
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !110

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #11
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !100
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #11
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !111 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !112

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #11
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !113, !llvm.loop !114

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !115 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !116 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !111 {
  %3 = load ptr, ptr %0, align 8, !tbaa !117
  %4 = load ptr, ptr %3, align 8, !tbaa !79
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #0 comdat align 2 !prof !118 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !98
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1021XalanFileOutputStream6createERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %4 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtr", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  %5 = load ptr, ptr %1, align 8, !tbaa !79
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 192) #11
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XalanFileOutputStreamELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %8) #11
  %9 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XalanFileOutputStreamELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #11
  invoke void @_ZN11xalanc_1_1021XalanFileOutputStreamC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(192) %9, ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) #11
          to label %10 unwind label %13

10:                                               ; preds = %3
  %11 = invoke { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XalanFileOutputStreamELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #11
          to label %12 unwind label %13

12:                                               ; preds = %10
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XalanFileOutputStreamELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  ret ptr %9

13:                                               ; preds = %10, %3
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XalanFileOutputStreamELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  resume { ptr, i32 } %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XalanFileOutputStreamELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #2 comdat align 2 !prof !65 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XalanFileOutputStreamELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XalanFileOutputStreamELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !65 {
  %2 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !120
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XalanFileOutputStreamELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !65 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XalanFileOutputStreamELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, ptr noundef null) #11
  %5 = insertvalue { ptr, ptr } poison, ptr %2, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %4, 1
  ret { ptr, ptr } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XalanFileOutputStreamELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XalanFileOutputStreamELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XalanFileOutputStreamELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 !prof !65 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !122
  store ptr %2, ptr %5, align 8, !tbaa !122
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1021XalanFileOutputStreamEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XalanFileOutputStreamELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1021XalanFileOutputStreamEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 !prof !65 {
  %4 = load ptr, ptr %1, align 8, !tbaa !122
  store ptr %4, ptr %0, align 8, !tbaa !123
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !122
  store ptr %6, ptr %5, align 8, !tbaa !120
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XalanFileOutputStreamELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !65 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XalanFileOutputStreamELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !65 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XalanFileOutputStreamELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  store ptr %1, ptr %0, align 8, !tbaa !123
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !120
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XalanFileOutputStreamELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XalanFileOutputStreamELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !65 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XalanFileOutputStreamELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XalanFileOutputStreamELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !123
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !120
  %7 = load ptr, ptr %4, align 8, !tbaa !79
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #11
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XalanFileOutputStreamELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !65 {
  %2 = load ptr, ptr %0, align 8, !tbaa !123
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XalanFileOutputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1021XalanFileOutputStreamE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !79
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanFileOutputStream", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @fclose(ptr noundef nonnull %3) #11
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanFileOutputStream", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %8) #9
  tail call void @_ZN11xalanc_1_1017XalanOutputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) #9
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1017XalanOutputStream16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #2 comdat align 2 !prof !124 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 4
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !125 {
  %2 = load ptr, ptr %0, align 8, !tbaa !117
  ret ptr %2
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenExceptionC2ERKNS_14XalanDOMStringEiRS2_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3) unnamed_addr #2 align 2 !prof !65 {
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 173, ptr noundef nonnull align 8 dereferenceable(36) %1) #11
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018FormatMessageLocalERKNS_14XalanDOMStringEiRS0_(ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3) #11
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(36) %3) #11
  tail call void @_ZN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #11
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !79
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018FormatMessageLocalERKNS_14XalanDOMStringEiRS0_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !126 {
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  ret ptr %2
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XalanFileOutputStream34XalanFileOutputStreamOpenExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 align 2 !prof !65 {
  tail call void @_ZN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionC2ERKNS_14XalanDOMStringEiRS2_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3) unnamed_addr #2 align 2 !prof !65 {
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 172, ptr noundef nonnull align 8 dereferenceable(36) %1) #11
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018FormatMessageLocalERKNS_14XalanDOMStringEiRS0_(ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3) #11
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(36) %3) #11
  tail call void @_ZN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #11
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XalanFileOutputStream35XalanFileOutputStreamWriteExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 align 2 !prof !65 {
  tail call void @_ZN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  ret void
}

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind optsize }
attributes #10 = { builtin nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { nounwind }
attributes #13 = { nounwind optsize willreturn memory(none) }
attributes #14 = { noreturn }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!64}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63}
!36 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!37 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8allocateEm, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv, i64 3}
!39 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv, i64 6}
!40 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv, i64 2}
!41 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv, i64 2}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyEPcS4_, i64 2}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10deallocateEPc, i64 2}
!44 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 967143541}
!45 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, i64 967143541}
!46 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm, i64 563515055}
!47 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 1083116306}
!48 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyEPcS4_, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyERc, i64 36}
!49 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv, i64 3}
!50 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv, i64 3}
!51 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10endPointerEv, i64 3}
!52 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!53 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!54 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!55 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!56 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!57 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!58 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!59 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!60 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!61 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!62 = !{ptr @_ZN11xalanc_1_1017XalanOutputStream16getMemoryManagerEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE16getMemoryManagerEv, i64 5}
!63 = !{ptr @_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE16getMemoryManagerEv, i64 832918}
!64 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!65 = !{!"function_entry_count", i64 0}
!66 = !{!67, !72, i64 184}
!67 = !{!"_ZTSN11xalanc_1_1021XalanFileOutputStreamE", !68, i64 0, !75, i64 144, !72, i64 184}
!68 = !{!"_ZTSN11xalanc_1_1017XalanOutputStreamE", !69, i64 8, !72, i64 16, !69, i64 24, !73, i64 32, !75, i64 64, !76, i64 104, !76, i64 105, !77, i64 112}
!69 = !{!"int", !70, i64 0}
!70 = !{!"omnipotent char", !71, i64 0}
!71 = !{!"Simple C++ TBAA"}
!72 = !{!"any pointer", !70, i64 0}
!73 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !72, i64 0, !74, i64 8, !74, i64 16, !72, i64 24}
!74 = !{!"long", !70, i64 0}
!75 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !73, i64 0, !69, i64 32}
!76 = !{!"bool", !70, i64 0}
!77 = !{!"_ZTSN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE", !72, i64 0, !74, i64 8, !74, i64 16, !72, i64 24}
!78 = !{!69, !69, i64 0}
!79 = !{!80, !80, i64 0}
!80 = !{!"vtable pointer", !71, i64 0}
!81 = !{!"XalanFileOutputStream.cpp:_ZN11xalanc_1_10L8openFileERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE"}
!82 = !{!"function_entry_count", i64 43398227}
!83 = !{!"function_entry_count", i64 3}
!84 = !{!77, !72, i64 0}
!85 = !{!77, !74, i64 8}
!86 = !{!77, !74, i64 16}
!87 = !{!"branch_weights", i32 4, i32 1}
!88 = !{!77, !72, i64 24}
!89 = !{!"function_entry_count", i64 244780}
!90 = !{!"function_entry_count", i64 6}
!91 = !{!"branch_weights", i32 5, i32 3}
!92 = !{!"function_entry_count", i64 2}
!93 = !{!"function_entry_count", i64 126551194}
!94 = !{!"function_entry_count", i64 967143541}
!95 = !{!"branch_weights", i32 403628487, i32 563515056}
!96 = !{!"function_entry_count", i64 3070433826}
!97 = !{!"function_entry_count", i64 1083116306}
!98 = !{!73, !74, i64 8}
!99 = !{!"function_entry_count", i64 565220908}
!100 = !{!73, !72, i64 24}
!101 = !{!"function_entry_count", i64 6521798503}
!102 = !{!"branch_weights", i32 1, i32 191}
!103 = !{!"branch_weights", i32 191, i32 3265}
!104 = distinct !{!104, !105}
!105 = !{!"llvm.loop.mustprogress"}
!106 = !{!"function_entry_count", i64 62786071}
!107 = !{!"function_entry_count", i64 122394}
!108 = !{!"function_entry_count", i64 128698679}
!109 = !{!73, !74, i64 16}
!110 = !{!"branch_weights", i32 43398290, i32 85300391}
!111 = !{!"function_entry_count", i64 85300390}
!112 = !{!"branch_weights", i32 1, i32 12185770}
!113 = !{!"branch_weights", i32 12185770, i32 -193930395}
!114 = distinct !{!114, !105}
!115 = !{!"function_entry_count", i64 227375739}
!116 = !{!"function_entry_count", i64 568333389}
!117 = !{!73, !72, i64 0}
!118 = !{!"function_entry_count", i64 30137156670}
!119 = !{!"function_entry_count", i64 825654975}
!120 = !{!121, !72, i64 8}
!121 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1021XalanFileOutputStreamEE", !72, i64 0, !72, i64 8}
!122 = !{!72, !72, i64 0}
!123 = !{!121, !72, i64 0}
!124 = !{!"function_entry_count", i64 5}
!125 = !{!"function_entry_count", i64 833358}
!126 = !{!"function_entry_count", i64 832918}
