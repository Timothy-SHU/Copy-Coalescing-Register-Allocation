; ModuleID = 'XalanCAPI.cpp'
source_filename = "XalanCAPI.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanMemMgrAutoPtr" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanTransformer, false>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanTransformer, false>::MemMgrAutoPtrData" = type { %"struct.std::pair" }
%"struct.std::pair" = type { ptr, ptr }
%"class.xalanc_1_10::XSLTInputSource" = type { %"class.xercesc_2_7::InputSource.base", ptr, ptr }
%"class.xercesc_2_7::InputSource.base" = type <{ ptr, ptr, ptr, ptr, ptr, i8 }>
%"class.xalanc_1_10::XSLTResultTarget" = type { %"class.xalanc_1_10::XalanDOMString", ptr, %"class.xalanc_1_10::XalanDOMString", ptr, ptr, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.5", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.5" = type { ptr, i64, i64, ptr }
%"class.std::ostrstream" = type { %"class.std::basic_ostream.base", %"class.std::strstreambuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::strstreambuf" = type <{ %"class.std::basic_streambuf", ptr, ptr, i8, [7 x i8] }>
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.xalanc_1_10::XalanTransformer" = type { ptr, ptr, %"class.xalanc_1_10::XalanVector", %"class.xalanc_1_10::XalanVector.0", %"class.xalanc_1_10::XalanVector.1", %"class.xalanc_1_10::XalanVector.2", %"class.xalanc_1_10::XalanVector.3", %"class.xalanc_1_10::XalanVector.4", i8, ptr, ptr, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", ptr, ptr, %"class.xalanc_1_10::XalanDOMString", i8, ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.2" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.4" = type { ptr, i64, i64, ptr }
%"class.std::istrstream" = type { %"class.std::basic_istream.base", %"class.std::strstreambuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { ptr, i64 }

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_16XalanTransformerELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_16XalanTransformerELb0EE3getEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_16XalanTransformerELb0EE7releaseEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_16XalanTransformerELb0EED2Ev = comdat any

$_Z14getTransformerPv = comdat any

$_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE = comdat any

$_ZN11xalanc_1_1016XalanTransformer9transformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetERKNS_16XSLTResultTargetE = comdat any

$_Z15getParsedSourcePKv = comdat any

$_Z13getStylesheetPKv = comdat any

$_ZN11xalanc_1_1016XalanTransformer16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZNK11xalanc_1_1016XalanTransformer12getLastErrorEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEixEm = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_16XalanTransformerELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1016XalanTransformerEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_16XalanTransformerELb0EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_16XalanTransformerELb0EE17MemMgrAutoPtrData10deallocateEv = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_16XalanTransformerELb0EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_16XalanTransformerELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

@_ZN11xercesc_2_76XMLUni22fgXercescDefaultLocaleE = external constant [0 x i8], align 1
@_ZL12fInitialized = internal unnamed_addr global i1 false, align 1
@_ZN11xalanc_1_1016XalanTransformer18s_emptyInputSourceE = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local i32 @XalanInitialize() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !47 {
  invoke void @_ZN11xercesc_2_716XMLPlatformUtils10InitializeEPKcS2_PNS_12PanicHandlerEPNS_13MemoryManagerEb(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgXercescDefaultLocaleE, ptr noundef null, ptr noundef null, ptr noundef null, i1 noundef zeroext false) #7
          to label %1 unwind label %5

1:                                                ; preds = %0
  %2 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv() #7
          to label %3 unwind label %5

3:                                                ; preds = %1
  invoke void @_ZN11xalanc_1_1016XalanTransformer10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
          to label %4 unwind label %5

4:                                                ; preds = %3
  store i1 true, ptr @_ZL12fInitialized, align 1
  br label %12

5:                                                ; preds = %3, %1, %0
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  %8 = tail call ptr @__cxa_begin_catch(ptr %7) #8
  tail call void @__cxa_end_catch()
  %9 = load i1, ptr @_ZL12fInitialized, align 1
  %10 = xor i1 %9, true
  %11 = sext i1 %10 to i32
  br label %12

12:                                               ; preds = %5, %4
  %13 = phi i32 [ %11, %5 ], [ 0, %4 ]
  ret i32 %13
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XMLPlatformUtils10InitializeEPKcS2_PNS_12PanicHandlerEPNS_13MemoryManagerEb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1016XalanTransformer10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv() local_unnamed_addr #1

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @XalanTerminate(i32 noundef %0) local_unnamed_addr #0 !prof !47 {
  tail call void @_ZN11xalanc_1_1016XalanTransformer9terminateEv() #7
  tail call void @_ZN11xercesc_2_716XMLPlatformUtils9TerminateEv() #7
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1016XalanTransformer10ICUCleanUpEv() #7
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1016XalanTransformer9terminateEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XMLPlatformUtils9TerminateEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1016XalanTransformer10ICUCleanUpEv() local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @CreateXalanTransformer() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !47 {
  %1 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtr", align 8
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv() #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #8
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 384) #7
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_16XalanTransformerELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %6) #7
  %7 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_16XalanTransformerELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #7
  invoke void @_ZN11xalanc_1_1016XalanTransformerC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(384) %7, ptr noundef nonnull align 8 dereferenceable(8) %2) #7
          to label %8 unwind label %11

8:                                                ; preds = %0
  %9 = invoke { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_16XalanTransformerELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #7
          to label %10 unwind label %11

10:                                               ; preds = %8
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_16XalanTransformerELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #8
  ret ptr %7

11:                                               ; preds = %8, %0
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_16XalanTransformerELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #8
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_16XalanTransformerELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !47 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_16XalanTransformerELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_16XalanTransformerELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !47 {
  %2 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1016XalanTransformerC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_16XalanTransformerELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !47 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_16XalanTransformerELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, ptr noundef null) #7
  %5 = insertvalue { ptr, ptr } poison, ptr %2, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %4, 1
  ret { ptr, ptr } %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_16XalanTransformerELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_16XalanTransformerELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #7
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #10
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @DeleteXalanTransformer(ptr noundef %0) local_unnamed_addr #0 !prof !47 {
  %2 = tail call noundef ptr @_Z14getTransformerPv(ptr noundef %0) #7
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(384) %2) #9
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv() #7
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %2) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_Z14getTransformerPv(ptr noundef %0) local_unnamed_addr #3 comdat !prof !47 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @XalanTransformToFile(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !47 {
  %5 = alloca %"class.xalanc_1_10::XSLTInputSource", align 8
  %6 = alloca %"class.xalanc_1_10::XSLTResultTarget", align 8
  %7 = alloca %"class.xalanc_1_10::XSLTInputSource", align 8
  %8 = alloca %"class.xalanc_1_10::XSLTInputSource", align 8
  %9 = alloca %"class.xalanc_1_10::XSLTResultTarget", align 8
  %10 = icmp eq ptr %1, null
  %11 = tail call noundef ptr @_Z14getTransformerPv(ptr noundef %3) #7
  br i1 %10, label %12, label %25

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #8
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv() #7
  call void @_ZN11xalanc_1_1015XSLTInputSourceC1EPKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %13) #7
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %6) #8
  %14 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv() #7
          to label %15 unwind label %19

15:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1016XSLTResultTargetC1EPKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %6, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %14) #7
          to label %16 unwind label %19

16:                                               ; preds = %15
  %17 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %11, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(112) %6) #7
          to label %18 unwind label %21

18:                                               ; preds = %16
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6) #9
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %6) #8
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  br label %45

19:                                               ; preds = %15, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %23

21:                                               ; preds = %16
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6) #9
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi { ptr, i32 } [ %22, %21 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %6) #8
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  br label %47

25:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #8
  %26 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv() #7
  call void @_ZN11xalanc_1_1015XSLTInputSourceC1EPKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %26) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #8
  %27 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv() #7
          to label %28 unwind label %35

28:                                               ; preds = %25
  invoke void @_ZN11xalanc_1_1015XSLTInputSourceC1EPKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %27) #7
          to label %29 unwind label %35

29:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %9) #8
  %30 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv() #7
          to label %31 unwind label %37

31:                                               ; preds = %29
  invoke void @_ZN11xalanc_1_1016XSLTResultTargetC1EPKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %9, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %30) #7
          to label %32 unwind label %37

32:                                               ; preds = %31
  %33 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceES3_RKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %11, ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 8 dereferenceable(112) %9) #7
          to label %34 unwind label %39

34:                                               ; preds = %32
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #9
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %9) #8
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %8) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #8
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #8
  br label %45

35:                                               ; preds = %28, %25
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %43

37:                                               ; preds = %31, %29
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %41

39:                                               ; preds = %32
  %40 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #9
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi { ptr, i32 } [ %40, %39 ], [ %38, %37 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %9) #8
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %8) #9
  br label %43

43:                                               ; preds = %41, %35
  %44 = phi { ptr, i32 } [ %42, %41 ], [ %36, %35 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #8
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #8
  br label %47

45:                                               ; preds = %34, %18
  %46 = phi i32 [ %17, %18 ], [ %33, %34 ]
  ret i32 %46

47:                                               ; preds = %43, %23
  %48 = phi { ptr, i32 } [ %24, %23 ], [ %44, %43 ]
  resume { ptr, i32 } %48
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(112) %2) local_unnamed_addr #0 comdat align 2 !prof !47 {
  %4 = load ptr, ptr @_ZN11xalanc_1_1016XalanTransformer18s_emptyInputSourceE, align 8, !tbaa !55
  %5 = tail call noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceES3_RKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(112) %2) #7
  ret i32 %5
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1015XSLTInputSourceC1EPKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1016XSLTResultTargetC1EPKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(41)) unnamed_addr #4

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceES3_RKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @XalanTransformToFilePrebuilt(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !47 {
  %5 = alloca %"class.xalanc_1_10::XSLTResultTarget", align 8
  %6 = tail call noundef ptr @_Z14getTransformerPv(ptr noundef %3) #7
  %7 = tail call noundef ptr @_Z15getParsedSourcePKv(ptr noundef %0) #7
  %8 = tail call noundef ptr @_Z13getStylesheetPKv(ptr noundef %1) #7
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %5) #8
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv() #7
  call void @_ZN11xalanc_1_1016XSLTResultTargetC1EPKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %9) #7
  %10 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %6, ptr noundef nonnull align 1 %7, ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(112) %5) #7
          to label %11 unwind label %12

11:                                               ; preds = %4
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #9
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %5) #8
  ret i32 %10

12:                                               ; preds = %4
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #9
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %5) #8
  resume { ptr, i32 } %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 1 %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(112) %3) local_unnamed_addr #0 comdat align 2 !prof !47 {
  %5 = tail call noundef i32 @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 1 %1, ptr noundef %2, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(112) %3) #7
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_Z15getParsedSourcePKv(ptr noundef %0) local_unnamed_addr #3 comdat !prof !47 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_Z13getStylesheetPKv(ptr noundef %0) local_unnamed_addr #3 comdat !prof !47 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @XalanTransformToData(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !47 {
  %5 = alloca %"class.std::ostrstream", align 8
  %6 = alloca %"class.xalanc_1_10::XSLTInputSource", align 8
  %7 = alloca %"class.xalanc_1_10::XSLTResultTarget", align 8
  %8 = alloca %"class.xalanc_1_10::XSLTInputSource", align 8
  %9 = alloca %"class.xalanc_1_10::XSLTInputSource", align 8
  %10 = alloca %"class.xalanc_1_10::XSLTResultTarget", align 8
  call void @llvm.lifetime.start.p0(i64 360, ptr nonnull %5) #8
  call void @_ZNSt10ostrstreamC1Ev(ptr noundef nonnull align 8 dereferenceable(96) %5) #7
  %11 = call noundef ptr @_Z14getTransformerPv(ptr noundef %3) #7
  %12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016XalanTransformer16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(384) %11) #7
  %13 = icmp eq ptr %1, null
  br i1 %13, label %14, label %31

14:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #8
  invoke void @_ZN11xalanc_1_1015XSLTInputSourceC1EPKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %12) #7
          to label %15 unwind label %21

15:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %7) #8
  invoke void @_ZN11xalanc_1_1016XSLTResultTargetC1ERSoRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %7, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %12) #7
          to label %16 unwind label %23

16:                                               ; preds = %15
  %17 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %11, ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(112) %7) #7
          to label %18 unwind label %25

18:                                               ; preds = %16
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7) #9
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %7) #8
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %6) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #8
  br label %51

19:                                               ; preds = %54
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %59

21:                                               ; preds = %14
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %29

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %27

25:                                               ; preds = %16
  %26 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7) #9
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi { ptr, i32 } [ %26, %25 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %7) #8
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %6) #9
  br label %29

29:                                               ; preds = %27, %21
  %30 = phi { ptr, i32 } [ %28, %27 ], [ %22, %21 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #8
  br label %59

31:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #8
  invoke void @_ZN11xalanc_1_1015XSLTInputSourceC1EPKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %12) #7
          to label %32 unwind label %37

32:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #8
  invoke void @_ZN11xalanc_1_1015XSLTInputSourceC1EPKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %12) #7
          to label %33 unwind label %39

33:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %10) #8
  invoke void @_ZN11xalanc_1_1016XSLTResultTargetC1ERSoRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %10, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %12) #7
          to label %34 unwind label %41

34:                                               ; preds = %33
  %35 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceES3_RKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %11, ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 8 dereferenceable(112) %10) #7
          to label %36 unwind label %43

36:                                               ; preds = %34
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %10) #9
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %10) #8
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %9) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #8
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %8) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #8
  br label %51

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %49

39:                                               ; preds = %32
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %47

41:                                               ; preds = %33
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %45

43:                                               ; preds = %34
  %44 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %10) #9
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi { ptr, i32 } [ %44, %43 ], [ %42, %41 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %10) #8
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %9) #9
  br label %47

47:                                               ; preds = %45, %39
  %48 = phi { ptr, i32 } [ %46, %45 ], [ %40, %39 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #8
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %8) #9
  br label %49

49:                                               ; preds = %47, %37
  %50 = phi { ptr, i32 } [ %48, %47 ], [ %38, %37 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #8
  br label %59

51:                                               ; preds = %36, %18
  %52 = phi i32 [ %17, %18 ], [ %35, %36 ]
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %5, i8 noundef signext 0) #7
          to label %56 unwind label %19

56:                                               ; preds = %54
  %57 = call noundef ptr @_ZNSt10ostrstream3strEv(ptr noundef nonnull align 8 dereferenceable(96) %5) #9
  store ptr %57, ptr %2, align 8, !tbaa !55
  br label %58

58:                                               ; preds = %56, %51
  call void @_ZNSt10ostrstreamD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %5) #9
  call void @llvm.lifetime.end.p0(i64 360, ptr nonnull %5) #8
  ret i32 %52

59:                                               ; preds = %49, %29, %19
  %60 = phi { ptr, i32 } [ %20, %19 ], [ %30, %29 ], [ %50, %49 ]
  call void @_ZNSt10ostrstreamD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %5) #9
  call void @llvm.lifetime.end.p0(i64 360, ptr nonnull %5) #8
  resume { ptr, i32 } %60
}

; Function Attrs: optsize
declare void @_ZNSt10ostrstreamC1Ev(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016XalanTransformer16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(384) %0) local_unnamed_addr #3 comdat align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1016XSLTResultTargetC1ERSoRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #0

; Function Attrs: nounwind optsize
declare noundef ptr @_ZNSt10ostrstream3strEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZNSt10ostrstreamD1Ev(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @XalanTransformToDataPrebuilt(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !47 {
  %5 = alloca %"class.std::ostrstream", align 8
  %6 = alloca %"class.xalanc_1_10::XSLTResultTarget", align 8
  call void @llvm.lifetime.start.p0(i64 360, ptr nonnull %5) #8
  call void @_ZNSt10ostrstreamC1Ev(ptr noundef nonnull align 8 dereferenceable(96) %5) #7
  %7 = call noundef ptr @_Z14getTransformerPv(ptr noundef %3) #7
  %8 = call noundef ptr @_Z15getParsedSourcePKv(ptr noundef %0) #7
  %9 = call noundef ptr @_Z13getStylesheetPKv(ptr noundef %1) #7
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %6) #8
  %10 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv() #7
          to label %11 unwind label %22

11:                                               ; preds = %4
  invoke void @_ZN11xalanc_1_1016XSLTResultTargetC1ERSoRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %6, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %10) #7
          to label %12 unwind label %22

12:                                               ; preds = %11
  %13 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %7, ptr noundef nonnull align 1 %8, ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(112) %6) #7
          to label %14 unwind label %24

14:                                               ; preds = %12
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6) #9
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %6) #8
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %14
  %17 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %5, i8 noundef signext 0) #7
          to label %18 unwind label %20

18:                                               ; preds = %16
  %19 = call noundef ptr @_ZNSt10ostrstream3strEv(ptr noundef nonnull align 8 dereferenceable(96) %5) #9
  store ptr %19, ptr %2, align 8, !tbaa !55
  br label %28

20:                                               ; preds = %16
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %29

22:                                               ; preds = %11, %4
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %26

24:                                               ; preds = %12
  %25 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6) #9
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi { ptr, i32 } [ %25, %24 ], [ %23, %22 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %6) #8
  br label %29

28:                                               ; preds = %18, %14
  call void @_ZNSt10ostrstreamD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %5) #9
  call void @llvm.lifetime.end.p0(i64 360, ptr nonnull %5) #8
  ret i32 %13

29:                                               ; preds = %26, %20
  %30 = phi { ptr, i32 } [ %21, %20 ], [ %27, %26 ]
  call void @_ZNSt10ostrstreamD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %5) #9
  call void @llvm.lifetime.end.p0(i64 360, ptr nonnull %5) #8
  resume { ptr, i32 } %30
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @XalanFreeData(ptr noundef %0) local_unnamed_addr #3 !prof !47 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef nonnull %0) #11
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @XalanTransformToHandler(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !47 {
  %7 = alloca %"class.xalanc_1_10::XSLTInputSource", align 8
  %8 = alloca %"class.xalanc_1_10::XSLTInputSource", align 8
  %9 = tail call noundef ptr @_Z14getTransformerPv(ptr noundef %2) #7
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016XalanTransformer16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(384) %9) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #8
  call void @_ZN11xalanc_1_1015XSLTInputSourceC1EPKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %10) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #8
  invoke void @_ZN11xalanc_1_1015XSLTInputSourceC1EPKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %10) #7
          to label %11 unwind label %14

11:                                               ; preds = %6
  %12 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceES3_PvPFmPKcmS4_EPFvS4_E(ptr noundef nonnull align 8 dereferenceable(384) %9, ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef %3, ptr noundef %4, ptr noundef %5) #7
          to label %13 unwind label %16

13:                                               ; preds = %11
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %8) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #8
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #8
  ret i32 %12

14:                                               ; preds = %6
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %8) #9
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #8
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #8
  resume { ptr, i32 } %19
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceES3_PvPFmPKcmS4_EPFvS4_E(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @XalanTransformToHandlerPrebuilt(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 !prof !47 {
  %7 = tail call noundef ptr @_Z14getTransformerPv(ptr noundef %2) #7
  %8 = tail call noundef ptr @_Z15getParsedSourcePKv(ptr noundef %0) #7
  %9 = tail call noundef ptr @_Z13getStylesheetPKv(ptr noundef %1) #7
  %10 = tail call noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPvPFmPKcmS7_EPFvS7_E(ptr noundef nonnull align 8 dereferenceable(384) %7, ptr noundef nonnull align 1 %8, ptr noundef %9, ptr noundef %3, ptr noundef %4, ptr noundef %5) #7
  ret i32 %10
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPvPFmPKcmS7_EPFvS7_E(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef nonnull align 1, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @XalanCompileStylesheet(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !47 {
  %4 = alloca ptr, align 8
  %5 = alloca %"class.xalanc_1_10::XSLTInputSource", align 8
  %6 = tail call noundef ptr @_Z14getTransformerPv(ptr noundef %1) #7
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016XalanTransformer16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(384) %6) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  store ptr null, ptr %4, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #8
  call void @_ZN11xalanc_1_1015XSLTInputSourceC1EPKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  %8 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer17compileStylesheetERKNS_15XSLTInputSourceERPKNS_23XalanCompiledStylesheetE(ptr noundef nonnull align 8 dereferenceable(384) %6, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #7
          to label %9 unwind label %13

9:                                                ; preds = %3
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %9
  %12 = load ptr, ptr %4, align 8, !tbaa !55
  store ptr %12, ptr %2, align 8, !tbaa !55
  br label %15

13:                                               ; preds = %3
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  resume { ptr, i32 } %14

15:                                               ; preds = %11, %9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret i32 %8
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1016XalanTransformer17compileStylesheetERKNS_15XSLTInputSourceERPKNS_23XalanCompiledStylesheetE(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @XalanCompileStylesheetFromStream(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !47 {
  %5 = alloca ptr, align 8
  %6 = alloca %"class.std::istrstream", align 8
  %7 = alloca %"class.xalanc_1_10::XSLTInputSource", align 8
  %8 = tail call noundef ptr @_Z14getTransformerPv(ptr noundef %2) #7
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016XalanTransformer16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(384) %8) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  store ptr null, ptr %5, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 368, ptr nonnull %6) #8
  call void @_ZNSt10istrstreamC1EPKcl(ptr noundef nonnull align 8 dereferenceable(104) %6, ptr noundef %0, i64 noundef %1) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #8
  invoke void @_ZN11xalanc_1_1015XSLTInputSourceC1ERSiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %9) #7
          to label %10 unwind label %16

10:                                               ; preds = %4
  %11 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer17compileStylesheetERKNS_15XSLTInputSourceERPKNS_23XalanCompiledStylesheetE(ptr noundef nonnull align 8 dereferenceable(384) %8, ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(8) %5) #7
          to label %12 unwind label %18

12:                                               ; preds = %10
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #8
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %12
  %15 = load ptr, ptr %5, align 8, !tbaa !55
  store ptr %15, ptr %3, align 8, !tbaa !55
  br label %22

16:                                               ; preds = %4
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %20

18:                                               ; preds = %10
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #9
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #8
  call void @_ZNSt10istrstreamD1Ev(ptr noundef nonnull align 8 dereferenceable(104) %6) #9
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  resume { ptr, i32 } %21

22:                                               ; preds = %14, %12
  call void @_ZNSt10istrstreamD1Ev(ptr noundef nonnull align 8 dereferenceable(104) %6) #9
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  ret i32 %11
}

; Function Attrs: optsize
declare void @_ZNSt10istrstreamC1EPKcl(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1015XSLTInputSourceC1ERSiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZNSt10istrstreamD1Ev(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @XalanDestroyCompiledStylesheet(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !47 {
  %3 = tail call noundef ptr @_Z14getTransformerPv(ptr noundef %1) #7
  %4 = tail call noundef ptr @_Z13getStylesheetPKv(ptr noundef %0) #7
  %5 = tail call noundef i32 @_ZN11xalanc_1_1016XalanTransformer17destroyStylesheetEPKNS_23XalanCompiledStylesheetE(ptr noundef nonnull align 8 dereferenceable(384) %3, ptr noundef %4) #7
  ret i32 %5
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1016XalanTransformer17destroyStylesheetEPKNS_23XalanCompiledStylesheetE(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @XalanParseSource(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !47 {
  %4 = alloca ptr, align 8
  %5 = alloca %"class.xalanc_1_10::XSLTInputSource", align 8
  %6 = tail call noundef ptr @_Z14getTransformerPv(ptr noundef %1) #7
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016XalanTransformer16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(384) %6) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  store ptr null, ptr %4, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #8
  call void @_ZN11xalanc_1_1015XSLTInputSourceC1EPKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  %8 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer11parseSourceERKNS_15XSLTInputSourceERPKNS_17XalanParsedSourceEb(ptr noundef nonnull align 8 dereferenceable(384) %6, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext false) #7
          to label %9 unwind label %13

9:                                                ; preds = %3
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %9
  %12 = load ptr, ptr %4, align 8, !tbaa !55
  store ptr %12, ptr %2, align 8, !tbaa !55
  br label %15

13:                                               ; preds = %3
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  resume { ptr, i32 } %14

15:                                               ; preds = %11, %9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret i32 %8
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1016XalanTransformer11parseSourceERKNS_15XSLTInputSourceERPKNS_17XalanParsedSourceEb(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @XalanParseSourceFromStream(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !47 {
  %5 = alloca ptr, align 8
  %6 = alloca %"class.std::istrstream", align 8
  %7 = alloca %"class.xalanc_1_10::XSLTInputSource", align 8
  %8 = tail call noundef ptr @_Z14getTransformerPv(ptr noundef %2) #7
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016XalanTransformer16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(384) %8) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  store ptr null, ptr %5, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 368, ptr nonnull %6) #8
  call void @_ZNSt10istrstreamC1EPKcl(ptr noundef nonnull align 8 dereferenceable(104) %6, ptr noundef %0, i64 noundef %1) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #8
  invoke void @_ZN11xalanc_1_1015XSLTInputSourceC1ERSiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %9) #7
          to label %10 unwind label %16

10:                                               ; preds = %4
  %11 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer11parseSourceERKNS_15XSLTInputSourceERPKNS_17XalanParsedSourceEb(ptr noundef nonnull align 8 dereferenceable(384) %8, ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(8) %5, i1 noundef zeroext false) #7
          to label %12 unwind label %18

12:                                               ; preds = %10
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #8
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %12
  %15 = load ptr, ptr %5, align 8, !tbaa !55
  store ptr %15, ptr %3, align 8, !tbaa !55
  br label %22

16:                                               ; preds = %4
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %20

18:                                               ; preds = %10
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #9
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #8
  call void @_ZNSt10istrstreamD1Ev(ptr noundef nonnull align 8 dereferenceable(104) %6) #9
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  resume { ptr, i32 } %21

22:                                               ; preds = %14, %12
  call void @_ZNSt10istrstreamD1Ev(ptr noundef nonnull align 8 dereferenceable(104) %6) #9
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  ret i32 %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @XalanDestroyParsedSource(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !47 {
  %3 = tail call noundef ptr @_Z14getTransformerPv(ptr noundef %1) #7
  %4 = tail call noundef ptr @_Z15getParsedSourcePKv(ptr noundef %0) #7
  %5 = tail call noundef i32 @_ZN11xalanc_1_1016XalanTransformer19destroyParsedSourceEPKNS_17XalanParsedSourceE(ptr noundef nonnull align 8 dereferenceable(384) %3, ptr noundef %4) #7
  ret i32 %5
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1016XalanTransformer19destroyParsedSourceEPKNS_17XalanParsedSourceE(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @XalanSetStylesheetParam(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !47 {
  %4 = tail call noundef ptr @_Z14getTransformerPv(ptr noundef %2) #7
  tail call void @_ZN11xalanc_1_1016XalanTransformer18setStylesheetParamEPKcS2_(ptr noundef nonnull align 8 dereferenceable(384) %4, ptr noundef %0, ptr noundef %1) #7
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1016XalanTransformer18setStylesheetParamEPKcS2_(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @XalanSetStylesheetParamUTF(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !47 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %6 = tail call noundef ptr @_Z14getTransformerPv(ptr noundef %2) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #8
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv() #7
  call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef -1) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #8
  %8 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv() #7
          to label %9 unwind label %12

9:                                                ; preds = %3
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef -1) #7
          to label %10 unwind label %12

10:                                               ; preds = %9
  invoke void @_ZN11xalanc_1_1016XalanTransformer18setStylesheetParamERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(384) %6, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %5) #7
          to label %11 unwind label %14

11:                                               ; preds = %10
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #8
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #8
  ret void

12:                                               ; preds = %9, %3
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %16

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #9
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi { ptr, i32 } [ %15, %14 ], [ %13, %12 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #8
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #8
  resume { ptr, i32 } %17
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1016XalanTransformer18setStylesheetParamERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #3 comdat align 2 !prof !70 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @XalanGetLastError(ptr noundef %0) local_unnamed_addr #0 !prof !47 {
  %2 = tail call noundef ptr @_Z14getTransformerPv(ptr noundef %0) #7
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1016XalanTransformer12getLastErrorEv(ptr noundef nonnull align 8 dereferenceable(384) %2) #7
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1016XalanTransformer12getLastErrorEv(ptr noundef nonnull align 8 dereferenceable(384) %0) local_unnamed_addr #0 comdat align 2 !prof !47 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 7
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0) #7
  ret ptr %3
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef nonnull align 1, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !72
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !73

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #7
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !74
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #7
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #10
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !75 {
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #8
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !76 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !77

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #7
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !78, !llvm.loop !79

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !81 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !82 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !76 {
  %3 = load ptr, ptr %0, align 8, !tbaa !83
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #3 comdat align 2 !prof !84 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !85 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !86
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !47 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !87
  %5 = getelementptr inbounds i8, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_16XalanTransformerELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !47 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !55
  store ptr %2, ptr %5, align 8, !tbaa !55
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1016XalanTransformerEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_16XalanTransformerELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1016XalanTransformerEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #3 comdat align 2 !prof !47 {
  %4 = load ptr, ptr %1, align 8, !tbaa !55
  store ptr %4, ptr %0, align 8, !tbaa !88
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !55
  store ptr %6, ptr %5, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_16XalanTransformerELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !47 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_16XalanTransformerELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !47 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_16XalanTransformerELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #7
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_16XalanTransformerELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #7
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !88
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = load ptr, ptr %4, align 8, !tbaa !48
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #7
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_16XalanTransformerELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !47 {
  %2 = load ptr, ptr %0, align 8, !tbaa !88
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_16XalanTransformerELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !47 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_16XalanTransformerELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #7
  store ptr %1, ptr %0, align 8, !tbaa !88
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !51
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_16XalanTransformerELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #7
  ret void
}

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize }
attributes #10 = { noreturn nounwind }
attributes #11 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!46}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!35 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!36 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!37 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!38 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!39 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!40 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!41 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!44 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!45 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!46 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!47 = !{!"function_entry_count", i64 0}
!48 = !{!49, !49, i64 0}
!49 = !{!"vtable pointer", !50, i64 0}
!50 = !{!"Simple C++ TBAA"}
!51 = !{!52, !53, i64 8}
!52 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1016XalanTransformerEE", !53, i64 0, !53, i64 8}
!53 = !{!"any pointer", !54, i64 0}
!54 = !{!"omnipotent char", !50, i64 0}
!55 = !{!53, !53, i64 0}
!56 = !{!"function_entry_count", i64 1}
!57 = !{!58, !53, i64 8}
!58 = !{!"_ZTSN11xalanc_1_1016XalanTransformerE", !53, i64 8, !59, i64 16, !61, i64 48, !62, i64 80, !63, i64 112, !64, i64 144, !65, i64 176, !66, i64 208, !53, i64 216, !53, i64 224, !67, i64 232, !67, i64 272, !53, i64 312, !53, i64 320, !67, i64 328, !66, i64 368, !53, i64 376}
!59 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEEE", !53, i64 0, !60, i64 8, !60, i64 16, !53, i64 24}
!60 = !{!"long", !54, i64 0}
!61 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEEE", !53, i64 0, !60, i64 8, !60, i64 16, !53, i64 24}
!62 = !{!"_ZTSN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEEE", !53, i64 0, !60, i64 8, !60, i64 16, !53, i64 24}
!63 = !{!"_ZTSN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEEE", !53, i64 0, !60, i64 8, !60, i64 16, !53, i64 24}
!64 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEEE", !53, i64 0, !60, i64 8, !60, i64 16, !53, i64 24}
!65 = !{!"_ZTSN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE", !53, i64 0, !60, i64 8, !60, i64 16, !53, i64 24}
!66 = !{!"bool", !54, i64 0}
!67 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !68, i64 0, !69, i64 32}
!68 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !53, i64 0, !60, i64 8, !60, i64 16, !53, i64 24}
!69 = !{!"int", !54, i64 0}
!70 = !{!"function_entry_count", i64 43398227}
!71 = !{!"function_entry_count", i64 128698679}
!72 = !{!68, !60, i64 16}
!73 = !{!"branch_weights", i32 43398290, i32 85300391}
!74 = !{!68, !53, i64 24}
!75 = !{!"function_entry_count", i64 6521798493}
!76 = !{!"function_entry_count", i64 85300390}
!77 = !{!"branch_weights", i32 1, i32 12185770}
!78 = !{!"branch_weights", i32 12185770, i32 -193930396}
!79 = distinct !{!79, !80}
!80 = !{!"llvm.loop.mustprogress"}
!81 = !{!"function_entry_count", i64 227375739}
!82 = !{!"function_entry_count", i64 568333389}
!83 = !{!68, !53, i64 0}
!84 = !{!"function_entry_count", i64 30137156660}
!85 = !{!"function_entry_count", i64 825654971}
!86 = !{!68, !60, i64 8}
!87 = !{!65, !53, i64 24}
!88 = !{!52, !53, i64 0}
