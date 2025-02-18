; ModuleID = 'XalanCAPI.cpp'
source_filename = "XalanCAPI.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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

$__clang_call_terminate = comdat any

@_ZN11xercesc_2_76XMLUni22fgXercescDefaultLocaleE = external constant [0 x i8], align 1
@_ZL12fInitialized = internal unnamed_addr global i1 false, align 1
@_ZN11xalanc_1_1016XalanTransformer18s_emptyInputSourceE = external local_unnamed_addr global ptr, align 8

; Function Attrs: cold mustprogress uwtable
define dso_local i32 @XalanInitialize() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !34 {
  invoke void @_ZN11xercesc_2_716XMLPlatformUtils10InitializeEPKcS2_PNS_12PanicHandlerEPNS_13MemoryManagerEb(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgXercescDefaultLocaleE, ptr noundef null, ptr noundef null, ptr noundef null, i1 noundef zeroext false)
          to label %1 unwind label %5

1:                                                ; preds = %0
  %2 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv()
          to label %3 unwind label %5

3:                                                ; preds = %1
  invoke void @_ZN11xalanc_1_1016XalanTransformer10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %4 unwind label %5

4:                                                ; preds = %3
  store i1 true, ptr @_ZL12fInitialized, align 1
  br label %9

5:                                                ; preds = %3, %1, %0
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  %8 = tail call ptr @__cxa_begin_catch(ptr %7) #8
  tail call void @__cxa_end_catch()
  br label %9

9:                                                ; preds = %5, %4
  %10 = load i1, ptr @_ZL12fInitialized, align 1
  %11 = xor i1 %10, true
  %12 = sext i1 %11 to i32
  ret i32 %12
}

declare void @_ZN11xercesc_2_716XMLPlatformUtils10InitializeEPKcS2_PNS_12PanicHandlerEPNS_13MemoryManagerEb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xalanc_1_1016XalanTransformer10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv() local_unnamed_addr #1

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @XalanTerminate(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  tail call void @_ZN11xalanc_1_1016XalanTransformer9terminateEv()
  tail call void @_ZN11xercesc_2_716XMLPlatformUtils9TerminateEv()
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1016XalanTransformer10ICUCleanUpEv()
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

declare void @_ZN11xalanc_1_1016XalanTransformer9terminateEv() local_unnamed_addr #1

declare void @_ZN11xercesc_2_716XMLPlatformUtils9TerminateEv() local_unnamed_addr #1

declare void @_ZN11xalanc_1_1016XalanTransformer10ICUCleanUpEv() local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @CreateXalanTransformer() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !34 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv()
  %2 = load ptr, ptr %1, align 8, !tbaa !35
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 384)
  invoke void @_ZN11xalanc_1_1016XalanTransformerC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(384) %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %6 unwind label %7

6:                                                ; preds = %0
  ret ptr %5

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  %9 = icmp eq ptr %5, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %1, align 8, !tbaa !35
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  invoke void %13(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %5)
          to label %17 unwind label %14

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #9
  unreachable

17:                                               ; preds = %7, %10
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @_ZN11xalanc_1_1016XalanTransformerC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @DeleteXalanTransformer(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = load ptr, ptr %2, align 8
  tail call void %3(ptr noundef nonnull align 8 dereferenceable(384) %0) #8
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv()
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @XalanTransformToFile(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = alloca %"class.xalanc_1_10::XSLTInputSource", align 8
  %6 = alloca %"class.xalanc_1_10::XSLTResultTarget", align 8
  %7 = alloca %"class.xalanc_1_10::XSLTInputSource", align 8
  %8 = alloca %"class.xalanc_1_10::XSLTInputSource", align 8
  %9 = alloca %"class.xalanc_1_10::XSLTResultTarget", align 8
  %10 = icmp eq ptr %1, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #8
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv()
  call void @_ZN11xalanc_1_1015XSLTInputSourceC1EPKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %12)
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %6) #8
  %13 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv()
          to label %14 unwind label %19

14:                                               ; preds = %11
  invoke void @_ZN11xalanc_1_1016XSLTResultTargetC1EPKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %6, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %15 unwind label %19

15:                                               ; preds = %14
  %16 = load ptr, ptr @_ZN11xalanc_1_1016XalanTransformer18s_emptyInputSourceE, align 8, !tbaa !38
  %17 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceES3_RKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %3, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %16, ptr noundef nonnull align 8 dereferenceable(112) %6)
          to label %18 unwind label %21

18:                                               ; preds = %15
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6) #8
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %6) #8
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  br label %45

19:                                               ; preds = %14, %11
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %23

21:                                               ; preds = %15
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6) #8
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi { ptr, i32 } [ %22, %21 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %6) #8
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  br label %47

25:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #8
  %26 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv()
  call void @_ZN11xalanc_1_1015XSLTInputSourceC1EPKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %26)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #8
  %27 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv()
          to label %28 unwind label %35

28:                                               ; preds = %25
  invoke void @_ZN11xalanc_1_1015XSLTInputSourceC1EPKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %29 unwind label %35

29:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %9) #8
  %30 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv()
          to label %31 unwind label %37

31:                                               ; preds = %29
  invoke void @_ZN11xalanc_1_1016XSLTResultTargetC1EPKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %9, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %32 unwind label %37

32:                                               ; preds = %31
  %33 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceES3_RKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %3, ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 8 dereferenceable(112) %9)
          to label %34 unwind label %39

34:                                               ; preds = %32
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #8
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %9) #8
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %8) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #8
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #8
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
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #8
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi { ptr, i32 } [ %40, %39 ], [ %38, %37 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %9) #8
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %8) #8
  br label %43

43:                                               ; preds = %41, %35
  %44 = phi { ptr, i32 } [ %42, %41 ], [ %36, %35 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #8
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #8
  br label %47

45:                                               ; preds = %34, %18
  %46 = phi i32 [ %17, %18 ], [ %33, %34 ]
  ret i32 %46

47:                                               ; preds = %43, %23
  %48 = phi { ptr, i32 } [ %24, %23 ], [ %44, %43 ]
  resume { ptr, i32 } %48
}

declare void @_ZN11xalanc_1_1015XSLTInputSourceC1EPKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xalanc_1_1016XSLTResultTargetC1EPKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(41)) unnamed_addr #3

declare noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceES3_RKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @XalanTransformToFilePrebuilt(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = alloca %"class.xalanc_1_10::XSLTResultTarget", align 8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %5) #8
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv()
  call void @_ZN11xalanc_1_1016XSLTResultTargetC1EPKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %7 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %3, ptr noundef nonnull align 1 %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(112) %5)
          to label %8 unwind label %9

8:                                                ; preds = %4
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #8
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %5) #8
  ret i32 %7

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #8
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %5) #8
  resume { ptr, i32 } %10
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @XalanTransformToData(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = alloca i8, align 1
  %6 = alloca %"class.std::ostrstream", align 8
  %7 = alloca %"class.xalanc_1_10::XSLTInputSource", align 8
  %8 = alloca %"class.xalanc_1_10::XSLTResultTarget", align 8
  %9 = alloca %"class.xalanc_1_10::XSLTInputSource", align 8
  %10 = alloca %"class.xalanc_1_10::XSLTInputSource", align 8
  %11 = alloca %"class.xalanc_1_10::XSLTResultTarget", align 8
  call void @llvm.lifetime.start.p0(i64 360, ptr nonnull %6) #8
  call void @_ZNSt10ostrstreamC1Ev(ptr noundef nonnull align 8 dereferenceable(96) %6)
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %3, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = icmp eq ptr %1, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #8
  invoke void @_ZN11xalanc_1_1015XSLTInputSourceC1EPKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %16 unwind label %23

16:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %8) #8
  invoke void @_ZN11xalanc_1_1016XSLTResultTargetC1ERSoRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %8, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %17 unwind label %25

17:                                               ; preds = %16
  %18 = load ptr, ptr @_ZN11xalanc_1_1016XalanTransformer18s_emptyInputSourceE, align 8, !tbaa !38
  %19 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceES3_RKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %3, ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %18, ptr noundef nonnull align 8 dereferenceable(112) %8)
          to label %20 unwind label %27

20:                                               ; preds = %17
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %8) #8
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %8) #8
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #8
  br label %53

21:                                               ; preds = %66, %64
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %71

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %31

25:                                               ; preds = %16
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %29

27:                                               ; preds = %17
  %28 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %8) #8
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi { ptr, i32 } [ %28, %27 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %8) #8
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #8
  br label %31

31:                                               ; preds = %29, %23
  %32 = phi { ptr, i32 } [ %30, %29 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #8
  br label %71

33:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #8
  invoke void @_ZN11xalanc_1_1015XSLTInputSourceC1EPKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %34 unwind label %39

34:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #8
  invoke void @_ZN11xalanc_1_1015XSLTInputSourceC1EPKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %35 unwind label %41

35:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %11) #8
  invoke void @_ZN11xalanc_1_1016XSLTResultTargetC1ERSoRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %11, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %36 unwind label %43

36:                                               ; preds = %35
  %37 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceES3_RKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %3, ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull align 8 dereferenceable(112) %11)
          to label %38 unwind label %45

38:                                               ; preds = %36
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %11) #8
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %11) #8
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %10) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #8
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %9) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #8
  br label %53

39:                                               ; preds = %33
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %51

41:                                               ; preds = %34
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %49

43:                                               ; preds = %35
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %47

45:                                               ; preds = %36
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %11) #8
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi { ptr, i32 } [ %46, %45 ], [ %44, %43 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %11) #8
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %10) #8
  br label %49

49:                                               ; preds = %47, %41
  %50 = phi { ptr, i32 } [ %48, %47 ], [ %42, %41 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #8
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %9) #8
  br label %51

51:                                               ; preds = %49, %39
  %52 = phi { ptr, i32 } [ %50, %49 ], [ %40, %39 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #8
  br label %71

53:                                               ; preds = %38, %20
  %54 = phi i32 [ %19, %20 ], [ %37, %38 ]
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 0, ptr %5, align 1, !tbaa !54
  %57 = load ptr, ptr %6, align 8, !tbaa !35
  %58 = getelementptr i8, ptr %57, i64 -24
  %59 = load i64, ptr %58, align 8
  %60 = getelementptr inbounds i8, ptr %6, i64 %59
  %61 = getelementptr inbounds %"class.std::ios_base", ptr %60, i64 0, i32 2
  %62 = load i64, ptr %61, align 8, !tbaa !55
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %56
  %65 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %5, i64 noundef 1)
          to label %68 unwind label %21

66:                                               ; preds = %56
  %67 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %6, i8 noundef signext 0)
          to label %68 unwind label %21

68:                                               ; preds = %66, %64
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  %69 = call noundef ptr @_ZNSt10ostrstream3strEv(ptr noundef nonnull align 8 dereferenceable(96) %6) #8
  store ptr %69, ptr %2, align 8, !tbaa !38
  br label %70

70:                                               ; preds = %68, %53
  call void @_ZNSt10ostrstreamD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #8
  call void @llvm.lifetime.end.p0(i64 360, ptr nonnull %6) #8
  ret i32 %54

71:                                               ; preds = %51, %31, %21
  %72 = phi { ptr, i32 } [ %22, %21 ], [ %32, %31 ], [ %52, %51 ]
  call void @_ZNSt10ostrstreamD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #8
  call void @llvm.lifetime.end.p0(i64 360, ptr nonnull %6) #8
  resume { ptr, i32 } %72
}

declare void @_ZNSt10ostrstreamC1Ev(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #1

declare void @_ZN11xalanc_1_1016XSLTResultTargetC1ERSoRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare noundef ptr @_ZNSt10ostrstream3strEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt10ostrstreamD1Ev(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @XalanTransformToDataPrebuilt(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = alloca i8, align 1
  %6 = alloca %"class.std::ostrstream", align 8
  %7 = alloca %"class.xalanc_1_10::XSLTResultTarget", align 8
  call void @llvm.lifetime.start.p0(i64 360, ptr nonnull %6) #8
  call void @_ZNSt10ostrstreamC1Ev(ptr noundef nonnull align 8 dereferenceable(96) %6)
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %7) #8
  %8 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv()
          to label %9 unwind label %30

9:                                                ; preds = %4
  invoke void @_ZN11xalanc_1_1016XSLTResultTargetC1ERSoRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %7, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %10 unwind label %30

10:                                               ; preds = %9
  %11 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %3, ptr noundef nonnull align 1 %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %12 unwind label %32

12:                                               ; preds = %10
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7) #8
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %7) #8
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 0, ptr %5, align 1, !tbaa !54
  %15 = load ptr, ptr %6, align 8, !tbaa !35
  %16 = getelementptr i8, ptr %15, i64 -24
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds i8, ptr %6, i64 %17
  %19 = getelementptr inbounds %"class.std::ios_base", ptr %18, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !55
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %14
  %23 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %5, i64 noundef 1)
          to label %26 unwind label %28

24:                                               ; preds = %14
  %25 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %6, i8 noundef signext 0)
          to label %26 unwind label %28

26:                                               ; preds = %24, %22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  %27 = call noundef ptr @_ZNSt10ostrstream3strEv(ptr noundef nonnull align 8 dereferenceable(96) %6) #8
  store ptr %27, ptr %2, align 8, !tbaa !38
  br label %36

28:                                               ; preds = %24, %22
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %37

30:                                               ; preds = %9, %4
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %34

32:                                               ; preds = %10
  %33 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7) #8
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi { ptr, i32 } [ %33, %32 ], [ %31, %30 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %7) #8
  br label %37

36:                                               ; preds = %26, %12
  call void @_ZNSt10ostrstreamD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #8
  call void @llvm.lifetime.end.p0(i64 360, ptr nonnull %6) #8
  ret i32 %11

37:                                               ; preds = %34, %28
  %38 = phi { ptr, i32 } [ %29, %28 ], [ %35, %34 ]
  call void @_ZNSt10ostrstreamD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #8
  call void @llvm.lifetime.end.p0(i64 360, ptr nonnull %6) #8
  resume { ptr, i32 } %38
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @XalanFreeData(ptr noundef %0) local_unnamed_addr #4 !prof !34 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef %0) #10
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @XalanTransformToHandler(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !34 {
  %7 = alloca %"class.xalanc_1_10::XSLTInputSource", align 8
  %8 = alloca %"class.xalanc_1_10::XSLTInputSource", align 8
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %2, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #8
  call void @_ZN11xalanc_1_1015XSLTInputSourceC1EPKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %10)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #8
  invoke void @_ZN11xalanc_1_1015XSLTInputSourceC1EPKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %11 unwind label %14

11:                                               ; preds = %6
  %12 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceES3_PvPFmPKcmS4_EPFvS4_E(ptr noundef nonnull align 8 dereferenceable(384) %2, ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef %3, ptr noundef %4, ptr noundef %5)
          to label %13 unwind label %16

13:                                               ; preds = %11
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %8) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #8
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #8
  ret i32 %12

14:                                               ; preds = %6
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %8) #8
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #8
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #8
  resume { ptr, i32 } %19
}

declare noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceES3_PvPFmPKcmS4_EPFvS4_E(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @XalanTransformToHandlerPrebuilt(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 !prof !34 {
  %7 = tail call noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPvPFmPKcmS7_EPFvS7_E(ptr noundef nonnull align 8 dereferenceable(384) %2, ptr noundef nonnull align 1 %0, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  ret i32 %7
}

declare noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPvPFmPKcmS7_EPFvS7_E(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef nonnull align 1, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @XalanCompileStylesheet(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca ptr, align 8
  %5 = alloca %"class.xalanc_1_10::XSLTInputSource", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  store ptr null, ptr %4, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #8
  call void @_ZN11xalanc_1_1015XSLTInputSourceC1EPKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %8 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer17compileStylesheetERKNS_15XSLTInputSourceERPKNS_23XalanCompiledStylesheetE(ptr noundef nonnull align 8 dereferenceable(384) %1, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %9 unwind label %13

9:                                                ; preds = %3
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %9
  %12 = load ptr, ptr %4, align 8, !tbaa !38
  store ptr %12, ptr %2, align 8, !tbaa !38
  br label %15

13:                                               ; preds = %3
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  resume { ptr, i32 } %14

15:                                               ; preds = %11, %9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret i32 %8
}

declare noundef i32 @_ZN11xalanc_1_1016XalanTransformer17compileStylesheetERKNS_15XSLTInputSourceERPKNS_23XalanCompiledStylesheetE(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @XalanCompileStylesheetFromStream(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = alloca ptr, align 8
  %6 = alloca %"class.std::istrstream", align 8
  %7 = alloca %"class.xalanc_1_10::XSLTInputSource", align 8
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  store ptr null, ptr %5, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 368, ptr nonnull %6) #8
  call void @_ZNSt10istrstreamC1EPKcl(ptr noundef nonnull align 8 dereferenceable(104) %6, ptr noundef %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #8
  invoke void @_ZN11xalanc_1_1015XSLTInputSourceC1ERSiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %10 unwind label %16

10:                                               ; preds = %4
  %11 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer17compileStylesheetERKNS_15XSLTInputSourceERPKNS_23XalanCompiledStylesheetE(ptr noundef nonnull align 8 dereferenceable(384) %2, ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %12 unwind label %18

12:                                               ; preds = %10
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #8
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %12
  %15 = load ptr, ptr %5, align 8, !tbaa !38
  store ptr %15, ptr %3, align 8, !tbaa !38
  br label %22

16:                                               ; preds = %4
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %20

18:                                               ; preds = %10
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #8
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #8
  call void @_ZNSt10istrstreamD1Ev(ptr noundef nonnull align 8 dereferenceable(104) %6) #8
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  resume { ptr, i32 } %21

22:                                               ; preds = %14, %12
  call void @_ZNSt10istrstreamD1Ev(ptr noundef nonnull align 8 dereferenceable(104) %6) #8
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  ret i32 %11
}

declare void @_ZNSt10istrstreamC1EPKcl(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i64 noundef) unnamed_addr #1

declare void @_ZN11xalanc_1_1015XSLTInputSourceC1ERSiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt10istrstreamD1Ev(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @XalanDestroyCompiledStylesheet(ptr noundef %0, ptr noundef nonnull %1) local_unnamed_addr #0 !prof !34 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1016XalanTransformer17destroyStylesheetEPKNS_23XalanCompiledStylesheetE(ptr noundef nonnull align 8 dereferenceable(384) %1, ptr noundef %0)
  ret i32 %3
}

declare noundef i32 @_ZN11xalanc_1_1016XalanTransformer17destroyStylesheetEPKNS_23XalanCompiledStylesheetE(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @XalanParseSource(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca ptr, align 8
  %5 = alloca %"class.xalanc_1_10::XSLTInputSource", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  store ptr null, ptr %4, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #8
  call void @_ZN11xalanc_1_1015XSLTInputSourceC1EPKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %8 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer11parseSourceERKNS_15XSLTInputSourceERPKNS_17XalanParsedSourceEb(ptr noundef nonnull align 8 dereferenceable(384) %1, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext false)
          to label %9 unwind label %13

9:                                                ; preds = %3
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %9
  %12 = load ptr, ptr %4, align 8, !tbaa !38
  store ptr %12, ptr %2, align 8, !tbaa !38
  br label %15

13:                                               ; preds = %3
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  resume { ptr, i32 } %14

15:                                               ; preds = %11, %9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret i32 %8
}

declare noundef i32 @_ZN11xalanc_1_1016XalanTransformer11parseSourceERKNS_15XSLTInputSourceERPKNS_17XalanParsedSourceEb(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @XalanParseSourceFromStream(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = alloca ptr, align 8
  %6 = alloca %"class.std::istrstream", align 8
  %7 = alloca %"class.xalanc_1_10::XSLTInputSource", align 8
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  store ptr null, ptr %5, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 368, ptr nonnull %6) #8
  call void @_ZNSt10istrstreamC1EPKcl(ptr noundef nonnull align 8 dereferenceable(104) %6, ptr noundef %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #8
  invoke void @_ZN11xalanc_1_1015XSLTInputSourceC1ERSiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %10 unwind label %16

10:                                               ; preds = %4
  %11 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer11parseSourceERKNS_15XSLTInputSourceERPKNS_17XalanParsedSourceEb(ptr noundef nonnull align 8 dereferenceable(384) %2, ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(8) %5, i1 noundef zeroext false)
          to label %12 unwind label %18

12:                                               ; preds = %10
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #8
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %12
  %15 = load ptr, ptr %5, align 8, !tbaa !38
  store ptr %15, ptr %3, align 8, !tbaa !38
  br label %22

16:                                               ; preds = %4
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %20

18:                                               ; preds = %10
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #8
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #8
  call void @_ZNSt10istrstreamD1Ev(ptr noundef nonnull align 8 dereferenceable(104) %6) #8
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  resume { ptr, i32 } %21

22:                                               ; preds = %14, %12
  call void @_ZNSt10istrstreamD1Ev(ptr noundef nonnull align 8 dereferenceable(104) %6) #8
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  ret i32 %11
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @XalanDestroyParsedSource(ptr noundef %0, ptr noundef nonnull %1) local_unnamed_addr #0 !prof !34 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1016XalanTransformer19destroyParsedSourceEPKNS_17XalanParsedSourceE(ptr noundef nonnull align 8 dereferenceable(384) %1, ptr noundef %0)
  ret i32 %3
}

declare noundef i32 @_ZN11xalanc_1_1016XalanTransformer19destroyParsedSourceEPKNS_17XalanParsedSourceE(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @XalanSetStylesheetParam(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) local_unnamed_addr #0 !prof !34 {
  tail call void @_ZN11xalanc_1_1016XalanTransformer18setStylesheetParamEPKcS2_(ptr noundef nonnull align 8 dereferenceable(384) %2, ptr noundef %0, ptr noundef %1)
  ret void
}

declare void @_ZN11xalanc_1_1016XalanTransformer18setStylesheetParamEPKcS2_(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @XalanSetStylesheetParamUTF(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #8
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv()
  call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef -1)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #8
  %7 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv()
          to label %8 unwind label %39

8:                                                ; preds = %3
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef -1)
          to label %9 unwind label %39

9:                                                ; preds = %8
  invoke void @_ZN11xalanc_1_1016XalanTransformer18setStylesheetParamERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(384) %2, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %5)
          to label %10 unwind label %41

10:                                               ; preds = %9
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %5, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !61
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %5, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !62
  %17 = load ptr, ptr %5, align 8, !tbaa !63
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %16)
          to label %24 unwind label %21

21:                                               ; preds = %14
  %22 = landingpad { ptr, i32 }
          catch ptr null
  %23 = extractvalue { ptr, i32 } %22, 0
  call void @__clang_call_terminate(ptr %23) #9
  unreachable

24:                                               ; preds = %10, %14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #8
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %4, i64 0, i32 2
  %26 = load i64, ptr %25, align 8, !tbaa !61
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %4, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !62
  %31 = load ptr, ptr %4, align 8, !tbaa !63
  %32 = load ptr, ptr %31, align 8, !tbaa !35
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  invoke void %34(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %30)
          to label %38 unwind label %35

35:                                               ; preds = %28
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  call void @__clang_call_terminate(ptr %37) #9
  unreachable

38:                                               ; preds = %24, %28
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #8
  ret void

39:                                               ; preds = %8, %3
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %56

41:                                               ; preds = %9
  %42 = landingpad { ptr, i32 }
          cleanup
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %5, i64 0, i32 2
  %44 = load i64, ptr %43, align 8, !tbaa !61
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %5, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !62
  %49 = load ptr, ptr %5, align 8, !tbaa !63
  %50 = load ptr, ptr %49, align 8, !tbaa !35
  %51 = getelementptr inbounds ptr, ptr %50, i64 3
  %52 = load ptr, ptr %51, align 8
  invoke void %52(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %48)
          to label %56 unwind label %53

53:                                               ; preds = %46
  %54 = landingpad { ptr, i32 }
          catch ptr null
  %55 = extractvalue { ptr, i32 } %54, 0
  call void @__clang_call_terminate(ptr %55) #9
  unreachable

56:                                               ; preds = %46, %41, %39
  %57 = phi { ptr, i32 } [ %40, %39 ], [ %42, %41 ], [ %42, %46 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #8
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %4, i64 0, i32 2
  %59 = load i64, ptr %58, align 8, !tbaa !61
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %4, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !62
  %64 = load ptr, ptr %4, align 8, !tbaa !63
  %65 = load ptr, ptr %64, align 8, !tbaa !35
  %66 = getelementptr inbounds ptr, ptr %65, i64 3
  %67 = load ptr, ptr %66, align 8
  invoke void %67(ptr noundef nonnull align 8 dereferenceable(8) %64, ptr noundef %63)
          to label %71 unwind label %68

68:                                               ; preds = %61
  %69 = landingpad { ptr, i32 }
          catch ptr null
  %70 = extractvalue { ptr, i32 } %69, 0
  call void @__clang_call_terminate(ptr %70) #9
  unreachable

71:                                               ; preds = %56, %61
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #8
  resume { ptr, i32 } %57
}

declare void @_ZN11xalanc_1_1016XalanTransformer18setStylesheetParamERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @XalanGetLastError(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 7, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  ret ptr %3
}

declare noundef i32 @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef nonnull align 1, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #1

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat !prof !34 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #8
  tail call void @_ZSt9terminatev() #9
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { builtin nounwind }

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
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !37, i64 0}
!41 = !{!42, !39, i64 8}
!42 = !{!"_ZTSN11xalanc_1_1016XalanTransformerE", !39, i64 8, !43, i64 16, !45, i64 48, !46, i64 80, !47, i64 112, !48, i64 144, !49, i64 176, !50, i64 208, !39, i64 216, !39, i64 224, !51, i64 232, !51, i64 272, !39, i64 312, !39, i64 320, !51, i64 328, !50, i64 368, !39, i64 376}
!43 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEEE", !39, i64 0, !44, i64 8, !44, i64 16, !39, i64 24}
!44 = !{!"long", !40, i64 0}
!45 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEEE", !39, i64 0, !44, i64 8, !44, i64 16, !39, i64 24}
!46 = !{!"_ZTSN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEEE", !39, i64 0, !44, i64 8, !44, i64 16, !39, i64 24}
!47 = !{!"_ZTSN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEEE", !39, i64 0, !44, i64 8, !44, i64 16, !39, i64 24}
!48 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEEE", !39, i64 0, !44, i64 8, !44, i64 16, !39, i64 24}
!49 = !{!"_ZTSN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE", !39, i64 0, !44, i64 8, !44, i64 16, !39, i64 24}
!50 = !{!"bool", !40, i64 0}
!51 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !52, i64 0, !53, i64 32}
!52 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !39, i64 0, !44, i64 8, !44, i64 16, !39, i64 24}
!53 = !{!"int", !40, i64 0}
!54 = !{!40, !40, i64 0}
!55 = !{!56, !44, i64 16}
!56 = !{!"_ZTSSt8ios_base", !44, i64 8, !44, i64 16, !57, i64 24, !58, i64 28, !58, i64 32, !39, i64 40, !59, i64 48, !40, i64 64, !53, i64 192, !39, i64 200, !60, i64 208}
!57 = !{!"_ZTSSt13_Ios_Fmtflags", !40, i64 0}
!58 = !{!"_ZTSSt12_Ios_Iostate", !40, i64 0}
!59 = !{!"_ZTSNSt8ios_base6_WordsE", !39, i64 0, !44, i64 8}
!60 = !{!"_ZTSSt6locale", !39, i64 0}
!61 = !{!52, !44, i64 16}
!62 = !{!52, !39, i64 24}
!63 = !{!52, !39, i64 0}
!64 = !{!49, !39, i64 24}
