; ModuleID = 'XSLTProcessorEnvSupportDefault.cpp'
source_filename = "XSLTProcessorEnvSupportDefault.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XSLTProcessorEnvSupportDefault" = type { %"class.xalanc_1_10::XSLTProcessorEnvSupport", %"class.xalanc_1_10::XPathEnvSupportDefault", ptr }
%"class.xalanc_1_10::XSLTProcessorEnvSupport" = type { %"class.xalanc_1_10::XPathEnvSupport" }
%"class.xalanc_1_10::XPathEnvSupport" = type { ptr }
%"class.xalanc_1_10::XPathEnvSupportDefault" = type { %"class.xalanc_1_10::XPathEnvSupport", %"class.xalanc_1_10::XalanMap", %"class.xalanc_1_10::XalanMap.0" }
%"class.xalanc_1_10::XalanMap" = type { %"struct.xalanc_1_10::DOMStringHashFunction", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanVector", i64, i64 }
%"struct.xalanc_1_10::DOMStringHashFunction" = type { i8 }
%"struct.std::equal_to" = type { i8 }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.0" = type { %"struct.xalanc_1_10::DOMStringHashFunction", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.1", %"class.xalanc_1_10::XalanList.1", %"class.xalanc_1_10::XalanVector.2", i64, i64 }
%"class.xalanc_1_10::XalanList.1" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.2" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanAutoPtr" = type { ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.3", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XSLTInputSource" = type { %"class.xercesc_2_7::InputSource.base", ptr, ptr }
%"class.xercesc_2_7::InputSource.base" = type <{ ptr, ptr, ptr, ptr, ptr, i8 }>
%"class.xercesc_2_7::XMLURL" = type <{ ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xalanc_1_10::XObjectPtr" = type { ptr }

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1010URISupport16getURLFromStringERKNS_14XalanDOMStringES3_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1010URISupport22getURLStringFromStringERKNS_14XalanDOMStringES3_RS1_ = comdat any

@_ZTVN11xalanc_1_1030XSLTProcessorEnvSupportDefaultE = dso_local unnamed_addr constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1030XSLTProcessorEnvSupportDefaultE, ptr @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefaultD2Ev, ptr @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefaultD0Ev, ptr @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefault8parseXMLERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringES6_, ptr @_ZNK11xalanc_1_1030XSLTProcessorEnvSupportDefault17getSourceDocumentERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefault17setSourceDocumentERKNS_14XalanDOMStringEPNS_13XalanDocumentE, ptr @_ZNK11xalanc_1_1030XSLTProcessorEnvSupportDefault14findURIFromDocEPKNS_13XalanDocumentE, ptr @_ZNK11xalanc_1_1030XSLTProcessorEnvSupportDefault16elementAvailableERKNS_14XalanDOMStringES3_, ptr @_ZNK11xalanc_1_1030XSLTProcessorEnvSupportDefault17functionAvailableERKNS_14XalanDOMStringES3_, ptr @_ZNK11xalanc_1_1030XSLTProcessorEnvSupportDefault11extFunctionERNS_21XPathExecutionContextERKNS_14XalanDOMStringES5_PNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS9_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1030XSLTProcessorEnvSupportDefault7problemENS_15XPathEnvSupport7eSourceENS1_15eClassificationEPKNS_14PrefixResolverEPKNS_9XalanNodeERKNS_14XalanDOMStringEPKtii, ptr @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefault5resetEv, ptr @_ZNK11xalanc_1_1030XSLTProcessorEnvSupportDefault7problemENS_15XPathEnvSupport7eSourceENS1_15eClassificationEPKNS_9XalanNodeEPKNS_19ElemTemplateElementERKNS_14XalanDOMStringEPKtii, ptr @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefault28installExternalFunctionLocalERKNS_14XalanDOMStringES3_RKNS_8FunctionE, ptr @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefault30uninstallExternalFunctionLocalERKNS_14XalanDOMStringES3_] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1030XSLTProcessorEnvSupportDefaultE = dso_local constant [48 x i8] c"N11xalanc_1_1030XSLTProcessorEnvSupportDefaultE\00", align 1
@_ZTIN11xalanc_1_1023XSLTProcessorEnvSupportE = external constant ptr
@_ZTIN11xalanc_1_1030XSLTProcessorEnvSupportDefaultE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1030XSLTProcessorEnvSupportDefaultE, ptr @_ZTIN11xalanc_1_1023XSLTProcessorEnvSupportE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefaultC1ERN11xercesc_2_713MemoryManagerEPNS_13XSLTProcessorE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefaultC2ERN11xercesc_2_713MemoryManagerEPNS_13XSLTProcessorE
@_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefaultD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefaultD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefaultC2ERN11xercesc_2_713MemoryManagerEPNS_13XSLTProcessorE(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  tail call void @_ZN11xalanc_1_1023XSLTProcessorEnvSupportC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVN11xalanc_1_1030XSLTProcessorEnvSupportDefaultE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  %4 = getelementptr inbounds %"class.xalanc_1_10::XSLTProcessorEnvSupportDefault", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1022XPathEnvSupportDefaultC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(280) %4, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %5 unwind label %7, !prof !47

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xalanc_1_10::XSLTProcessorEnvSupportDefault", ptr %0, i64 0, i32 2
  store ptr %2, ptr %6, align 8, !tbaa !48
  ret void

7:                                                ; preds = %3
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1023XSLTProcessorEnvSupportD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  resume { ptr, i32 } %8
}

declare void @_ZN11xalanc_1_1023XSLTProcessorEnvSupportC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @_ZN11xalanc_1_1022XPathEnvSupportDefaultC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(280), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1023XSLTProcessorEnvSupportD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefaultD2Ev(ptr noundef nonnull align 8 dereferenceable(296) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVN11xalanc_1_1030XSLTProcessorEnvSupportDefaultE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %"class.xalanc_1_10::XSLTProcessorEnvSupportDefault", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1022XPathEnvSupportDefault5resetEv(ptr noundef nonnull align 8 dereferenceable(280) %2)
          to label %3 unwind label %4, !prof !47

3:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1022XPathEnvSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(280) %2) #7
  tail call void @_ZN11xalanc_1_1023XSLTProcessorEnvSupportD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #8
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat !prof !65 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #7
  tail call void @_ZSt9terminatev() #8
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1022XPathEnvSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(280)) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefaultD0Ev(ptr noundef nonnull align 8 dereferenceable(296) %0) unnamed_addr #4 align 2 !prof !65 {
  tail call void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefaultD2Ev(ptr noundef nonnull align 8 dereferenceable(296) %0) #7
  tail call void @_ZdlPv(ptr noundef %0) #9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefault29installExternalFunctionGlobalERKNS_14XalanDOMStringES3_RKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 align 2 !prof !65 {
  tail call void @_ZN11xalanc_1_1022XPathEnvSupportDefault29installExternalFunctionGlobalERKNS_14XalanDOMStringES3_RKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret void
}

declare void @_ZN11xalanc_1_1022XPathEnvSupportDefault29installExternalFunctionGlobalERKNS_14XalanDOMStringES3_RKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefault31uninstallExternalFunctionGlobalERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 align 2 !prof !65 {
  tail call void @_ZN11xalanc_1_1022XPathEnvSupportDefault31uninstallExternalFunctionGlobalERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  ret void
}

declare void @_ZN11xalanc_1_1022XPathEnvSupportDefault31uninstallExternalFunctionGlobalERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefault28installExternalFunctionLocalERKNS_14XalanDOMStringES3_RKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #1 align 2 !prof !65 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSLTProcessorEnvSupportDefault", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1022XPathEnvSupportDefault28installExternalFunctionLocalERKNS_14XalanDOMStringES3_RKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(280) %5, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  ret void
}

declare void @_ZN11xalanc_1_1022XPathEnvSupportDefault28installExternalFunctionLocalERKNS_14XalanDOMStringES3_RKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(280), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefault30uninstallExternalFunctionLocalERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #1 align 2 !prof !65 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XSLTProcessorEnvSupportDefault", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1022XPathEnvSupportDefault30uninstallExternalFunctionLocalERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(280) %4, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2)
  ret void
}

declare void @_ZN11xalanc_1_1022XPathEnvSupportDefault30uninstallExternalFunctionLocalERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(280), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefault5resetEv(ptr noundef nonnull align 8 dereferenceable(296) %0) unnamed_addr #1 align 2 !prof !66 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XSLTProcessorEnvSupportDefault", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1022XPathEnvSupportDefault5resetEv(ptr noundef nonnull align 8 dereferenceable(280) %2)
  ret void
}

declare void @_ZN11xalanc_1_1022XPathEnvSupportDefault5resetEv(ptr noundef nonnull align 8 dereferenceable(280)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefault8parseXMLERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringES6_(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %5 = alloca %"class.xalanc_1_10::XalanAutoPtr", align 8
  %6 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %7 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %8 = alloca %"class.xalanc_1_10::XSLTInputSource", align 8
  %9 = alloca %"class.xalanc_1_10::XSLTInputSource", align 8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XSLTProcessorEnvSupportDefault", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = getelementptr inbounds %"class.xalanc_1_10::XSLTProcessorEnvSupportDefault", ptr %0, i64 0, i32 1
  %15 = tail call noundef ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault8parseXMLERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringES6_(ptr noundef nonnull align 8 dereferenceable(280) %14, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %3)
  br label %213

16:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  call void @_ZN11xalanc_1_1010URISupport16getURLFromStringERKNS_14XalanDOMStringES3_RN11xercesc_2_713MemoryManagerE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XalanAutoPtr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #7
  %17 = load ptr, ptr %5, align 8, !tbaa !67
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %17, i64 0, i32 10
  %19 = load ptr, ptr %18, align 8, !tbaa !69
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  invoke void @_ZN11xercesc_2_76XMLURL13buildFullTextEv(ptr noundef nonnull align 8 dereferenceable(81) %17)
          to label %22 unwind label %58

22:                                               ; preds = %21, %16
  %23 = load ptr, ptr %18, align 8, !tbaa !69
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef %23, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef -1)
          to label %24 unwind label %58

24:                                               ; preds = %22
  %25 = load ptr, ptr %0, align 8, !tbaa !44
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  %28 = invoke noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(36) %6)
          to label %29 unwind label %60

29:                                               ; preds = %24
  %30 = icmp eq ptr %28, null
  br i1 %30, label %31, label %166

31:                                               ; preds = %29
  %32 = load ptr, ptr %10, align 8, !tbaa !48
  %33 = load ptr, ptr %32, align 8, !tbaa !44
  %34 = getelementptr inbounds ptr, ptr %33, i64 12
  %35 = load ptr, ptr %34, align 8
  %36 = invoke noundef nonnull align 8 dereferenceable(8) ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %37 unwind label %62

37:                                               ; preds = %31
  %38 = load ptr, ptr %36, align 8, !tbaa !44
  %39 = getelementptr inbounds ptr, ptr %38, i64 14
  %40 = load ptr, ptr %39, align 8
  %41 = invoke noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(8) %36)
          to label %42 unwind label %64

42:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #7
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %43 unwind label %66

43:                                               ; preds = %42
  %44 = icmp eq ptr %41, null
  br i1 %44, label %45, label %74

45:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #7
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %6, i64 0, i32 1
  %47 = load i64, ptr %46, align 8, !tbaa !74
  %48 = icmp eq i64 %47, 0
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %6, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8
  %51 = select i1 %48, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %50
  invoke void @_ZN11xalanc_1_1015XSLTInputSourceC1EPKtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef %51, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %52 unwind label %68

52:                                               ; preds = %45
  %53 = load ptr, ptr %36, align 8, !tbaa !44
  %54 = getelementptr inbounds ptr, ptr %53, i64 6
  %55 = load ptr, ptr %54, align 8
  %56 = invoke noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull align 8 dereferenceable(41) %8, ptr noundef nonnull align 8 dereferenceable(36) %7)
          to label %57 unwind label %70

57:                                               ; preds = %52
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %8) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #7
  br label %125

58:                                               ; preds = %21, %22
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %204

60:                                               ; preds = %24
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %189

62:                                               ; preds = %31
  %63 = landingpad { ptr, i32 }
          cleanup
  br label %189

64:                                               ; preds = %37
  %65 = landingpad { ptr, i32 }
          cleanup
  br label %189

66:                                               ; preds = %42
  %67 = landingpad { ptr, i32 }
          cleanup
  br label %164

68:                                               ; preds = %45
  %69 = landingpad { ptr, i32 }
          cleanup
  br label %72

70:                                               ; preds = %52
  %71 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %8) #7
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi { ptr, i32 } [ %71, %70 ], [ %69, %68 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #7
  br label %149

74:                                               ; preds = %43
  %75 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %6, i64 0, i32 1
  %76 = load i64, ptr %75, align 8, !tbaa !74
  %77 = icmp eq i64 %76, 0
  %78 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %6, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8
  %80 = select i1 %77, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %79
  %81 = load ptr, ptr %41, align 8, !tbaa !44
  %82 = getelementptr inbounds ptr, ptr %81, i64 2
  %83 = load ptr, ptr %82, align 8
  %84 = invoke noundef ptr %83(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef null, ptr noundef %80)
          to label %85 unwind label %92

85:                                               ; preds = %74
  %86 = icmp eq ptr %84, null
  br i1 %86, label %96, label %87

87:                                               ; preds = %85
  %88 = load ptr, ptr %36, align 8, !tbaa !44
  %89 = getelementptr inbounds ptr, ptr %88, i64 6
  %90 = load ptr, ptr %89, align 8
  %91 = invoke noundef ptr %90(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull align 8 dereferenceable(41) %84, ptr noundef nonnull align 8 dereferenceable(36) %7)
          to label %113 unwind label %94

92:                                               ; preds = %74
  %93 = landingpad { ptr, i32 }
          cleanup
  br label %149

94:                                               ; preds = %87
  %95 = landingpad { ptr, i32 }
          cleanup
  br label %119

96:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #7
  %97 = load i64, ptr %75, align 8, !tbaa !74
  %98 = icmp eq i64 %97, 0
  %99 = load ptr, ptr %78, align 8
  %100 = select i1 %98, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %99
  invoke void @_ZN11xalanc_1_1015XSLTInputSourceC1EPKtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef %100, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %101 unwind label %107

101:                                              ; preds = %96
  %102 = load ptr, ptr %36, align 8, !tbaa !44
  %103 = getelementptr inbounds ptr, ptr %102, i64 6
  %104 = load ptr, ptr %103, align 8
  %105 = invoke noundef ptr %104(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull align 8 dereferenceable(41) %9, ptr noundef nonnull align 8 dereferenceable(36) %7)
          to label %106 unwind label %109

106:                                              ; preds = %101
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %9) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #7
  br label %113

107:                                              ; preds = %96
  %108 = landingpad { ptr, i32 }
          cleanup
  br label %111

109:                                              ; preds = %101
  %110 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %9) #7
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi { ptr, i32 } [ %110, %109 ], [ %108, %107 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #7
  br label %119

113:                                              ; preds = %87, %106
  %114 = phi ptr [ %105, %106 ], [ %91, %87 ]
  br i1 %86, label %125, label %115

115:                                              ; preds = %113
  %116 = load ptr, ptr %84, align 8, !tbaa !44
  %117 = getelementptr inbounds ptr, ptr %116, i64 1
  %118 = load ptr, ptr %117, align 8
  call void %118(ptr noundef nonnull align 8 dereferenceable(41) %84) #7
  br label %125

119:                                              ; preds = %111, %94
  %120 = phi { ptr, i32 } [ %95, %94 ], [ %112, %111 ]
  br i1 %86, label %149, label %121

121:                                              ; preds = %119
  %122 = load ptr, ptr %84, align 8, !tbaa !44
  %123 = getelementptr inbounds ptr, ptr %122, i64 1
  %124 = load ptr, ptr %123, align 8
  call void %124(ptr noundef nonnull align 8 dereferenceable(41) %84) #7
  br label %149

125:                                              ; preds = %115, %113, %57
  %126 = phi ptr [ %56, %57 ], [ %114, %113 ], [ %114, %115 ]
  %127 = icmp eq ptr %126, null
  br i1 %127, label %134, label %128

128:                                              ; preds = %125
  %129 = load ptr, ptr %0, align 8, !tbaa !44
  %130 = getelementptr inbounds ptr, ptr %129, i64 4
  %131 = load ptr, ptr %130, align 8
  invoke void %131(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull %126)
          to label %134 unwind label %132

132:                                              ; preds = %128
  %133 = landingpad { ptr, i32 }
          cleanup
  br label %149

134:                                              ; preds = %128, %125
  %135 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %7, i64 0, i32 2
  %136 = load i64, ptr %135, align 8, !tbaa !76
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %148, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %7, i64 0, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !77
  %141 = load ptr, ptr %7, align 8, !tbaa !78
  %142 = load ptr, ptr %141, align 8, !tbaa !44
  %143 = getelementptr inbounds ptr, ptr %142, i64 3
  %144 = load ptr, ptr %143, align 8
  invoke void %144(ptr noundef nonnull align 8 dereferenceable(8) %141, ptr noundef %140)
          to label %148 unwind label %145

145:                                              ; preds = %138
  %146 = landingpad { ptr, i32 }
          catch ptr null
  %147 = extractvalue { ptr, i32 } %146, 0
  call void @__clang_call_terminate(ptr %147) #8
  unreachable

148:                                              ; preds = %134, %138
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #7
  br label %166

149:                                              ; preds = %92, %119, %121, %132, %72
  %150 = phi { ptr, i32 } [ %133, %132 ], [ %73, %72 ], [ %93, %92 ], [ %120, %119 ], [ %120, %121 ]
  %151 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %7, i64 0, i32 2
  %152 = load i64, ptr %151, align 8, !tbaa !76
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %164, label %154

154:                                              ; preds = %149
  %155 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %7, i64 0, i32 3
  %156 = load ptr, ptr %155, align 8, !tbaa !77
  %157 = load ptr, ptr %7, align 8, !tbaa !78
  %158 = load ptr, ptr %157, align 8, !tbaa !44
  %159 = getelementptr inbounds ptr, ptr %158, i64 3
  %160 = load ptr, ptr %159, align 8
  invoke void %160(ptr noundef nonnull align 8 dereferenceable(8) %157, ptr noundef %156)
          to label %164 unwind label %161

161:                                              ; preds = %154
  %162 = landingpad { ptr, i32 }
          catch ptr null
  %163 = extractvalue { ptr, i32 } %162, 0
  call void @__clang_call_terminate(ptr %163) #8
  unreachable

164:                                              ; preds = %154, %149, %66
  %165 = phi { ptr, i32 } [ %67, %66 ], [ %150, %149 ], [ %150, %154 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #7
  br label %189

166:                                              ; preds = %148, %29
  %167 = phi ptr [ %126, %148 ], [ %28, %29 ]
  %168 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %6, i64 0, i32 2
  %169 = load i64, ptr %168, align 8, !tbaa !76
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %181, label %171

171:                                              ; preds = %166
  %172 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %6, i64 0, i32 3
  %173 = load ptr, ptr %172, align 8, !tbaa !77
  %174 = load ptr, ptr %6, align 8, !tbaa !78
  %175 = load ptr, ptr %174, align 8, !tbaa !44
  %176 = getelementptr inbounds ptr, ptr %175, i64 3
  %177 = load ptr, ptr %176, align 8
  invoke void %177(ptr noundef nonnull align 8 dereferenceable(8) %174, ptr noundef %173)
          to label %181 unwind label %178

178:                                              ; preds = %171
  %179 = landingpad { ptr, i32 }
          catch ptr null
  %180 = extractvalue { ptr, i32 } %179, 0
  call void @__clang_call_terminate(ptr %180) #8
  unreachable

181:                                              ; preds = %166, %171
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #7
  %182 = load ptr, ptr %5, align 8, !tbaa !67
  %183 = icmp eq ptr %182, null
  br i1 %183, label %188, label %184

184:                                              ; preds = %181
  %185 = load ptr, ptr %182, align 8, !tbaa !44
  %186 = getelementptr inbounds ptr, ptr %185, i64 1
  %187 = load ptr, ptr %186, align 8
  call void %187(ptr noundef nonnull align 8 dereferenceable(81) %182) #7
  br label %188

188:                                              ; preds = %181, %184
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %213

189:                                              ; preds = %62, %164, %64, %60
  %190 = phi { ptr, i32 } [ %61, %60 ], [ %63, %62 ], [ %165, %164 ], [ %65, %64 ]
  %191 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %6, i64 0, i32 2
  %192 = load i64, ptr %191, align 8, !tbaa !76
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %204, label %194

194:                                              ; preds = %189
  %195 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %6, i64 0, i32 3
  %196 = load ptr, ptr %195, align 8, !tbaa !77
  %197 = load ptr, ptr %6, align 8, !tbaa !78
  %198 = load ptr, ptr %197, align 8, !tbaa !44
  %199 = getelementptr inbounds ptr, ptr %198, i64 3
  %200 = load ptr, ptr %199, align 8
  invoke void %200(ptr noundef nonnull align 8 dereferenceable(8) %197, ptr noundef %196)
          to label %204 unwind label %201

201:                                              ; preds = %194
  %202 = landingpad { ptr, i32 }
          catch ptr null
  %203 = extractvalue { ptr, i32 } %202, 0
  call void @__clang_call_terminate(ptr %203) #8
  unreachable

204:                                              ; preds = %194, %189, %58
  %205 = phi { ptr, i32 } [ %59, %58 ], [ %190, %189 ], [ %190, %194 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #7
  %206 = load ptr, ptr %5, align 8, !tbaa !67
  %207 = icmp eq ptr %206, null
  br i1 %207, label %212, label %208

208:                                              ; preds = %204
  %209 = load ptr, ptr %206, align 8, !tbaa !44
  %210 = getelementptr inbounds ptr, ptr %209, i64 1
  %211 = load ptr, ptr %210, align 8
  call void %211(ptr noundef nonnull align 8 dereferenceable(81) %206) #7
  br label %212

212:                                              ; preds = %204, %208
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  resume { ptr, i32 } %205

213:                                              ; preds = %188, %13
  %214 = phi ptr [ %15, %13 ], [ %167, %188 ]
  ret ptr %214
}

declare noundef ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault8parseXMLERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringES6_(ptr noundef nonnull align 8 dereferenceable(280), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010URISupport16getURLFromStringERKNS_14XalanDOMStringES3_RN11xercesc_2_713MemoryManagerE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XalanAutoPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #7
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %3)
  invoke void @_ZN11xalanc_1_1010URISupport22getURLStringFromStringERKNS_14XalanDOMStringES3_RS1_(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %5)
          to label %6 unwind label %27

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !74, !noalias !79
  %9 = icmp eq i64 %8, 0
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !noalias !79
  %12 = select i1 %9, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %11
  invoke void @_ZN11xalanc_1_1010URISupport16getURLFromStringEPKtRN11xercesc_2_713MemoryManagerE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XalanAutoPtr") align 8 %0, ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %13 unwind label %27

13:                                               ; preds = %6
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !76
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %10, align 8, !tbaa !77
  %19 = load ptr, ptr %5, align 8, !tbaa !78
  %20 = load ptr, ptr %19, align 8, !tbaa !44
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %18)
          to label %26 unwind label %23

23:                                               ; preds = %17
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  call void @__clang_call_terminate(ptr %25) #8
  unreachable

26:                                               ; preds = %13, %17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #7
  ret void

27:                                               ; preds = %6, %4
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  %30 = load i64, ptr %29, align 8, !tbaa !76
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !77
  %35 = load ptr, ptr %5, align 8, !tbaa !78
  %36 = load ptr, ptr %35, align 8, !tbaa !44
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  invoke void %38(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef %34)
          to label %42 unwind label %39

39:                                               ; preds = %32
  %40 = landingpad { ptr, i32 }
          catch ptr null
  %41 = extractvalue { ptr, i32 } %40, 0
  call void @__clang_call_terminate(ptr %41) #8
  unreachable

42:                                               ; preds = %27, %32
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #7
  resume { ptr, i32 } %28
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @_ZN11xalanc_1_1015XSLTInputSourceC1EPKtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(41)) unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1030XSLTProcessorEnvSupportDefault17getSourceDocumentERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #1 align 2 !prof !65 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XSLTProcessorEnvSupportDefault", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xalanc_1_1022XPathEnvSupportDefault17getSourceDocumentERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(280) %3, ptr noundef nonnull align 8 dereferenceable(36) %1)
  ret ptr %4
}

declare noundef ptr @_ZNK11xalanc_1_1022XPathEnvSupportDefault17getSourceDocumentERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(280), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefault17setSourceDocumentERKNS_14XalanDOMStringEPNS_13XalanDocumentE(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !43 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XSLTProcessorEnvSupportDefault", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1022XPathEnvSupportDefault17setSourceDocumentERKNS_14XalanDOMStringEPNS_13XalanDocumentE(ptr noundef nonnull align 8 dereferenceable(280) %4, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2)
  ret void
}

declare void @_ZN11xalanc_1_1022XPathEnvSupportDefault17setSourceDocumentERKNS_14XalanDOMStringEPNS_13XalanDocumentE(ptr noundef nonnull align 8 dereferenceable(280), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1030XSLTProcessorEnvSupportDefault14findURIFromDocEPKNS_13XalanDocumentE(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !65 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XSLTProcessorEnvSupportDefault", ptr %0, i64 0, i32 1
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XPathEnvSupportDefault14findURIFromDocEPKNS_13XalanDocumentE(ptr noundef nonnull align 8 dereferenceable(280) %3, ptr noundef %1)
  ret ptr %4
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XPathEnvSupportDefault14findURIFromDocEPKNS_13XalanDocumentE(ptr noundef nonnull align 8 dereferenceable(280), ptr noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1030XSLTProcessorEnvSupportDefault16elementAvailableERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #1 align 2 !prof !65 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XSLTProcessorEnvSupportDefault", ptr %0, i64 0, i32 1
  %5 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1022XPathEnvSupportDefault16elementAvailableERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(280) %4, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2)
  ret i1 %5
}

declare noundef zeroext i1 @_ZNK11xalanc_1_1022XPathEnvSupportDefault16elementAvailableERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(280), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1030XSLTProcessorEnvSupportDefault17functionAvailableERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #1 align 2 !prof !65 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XSLTProcessorEnvSupportDefault", ptr %0, i64 0, i32 1
  %5 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1022XPathEnvSupportDefault17functionAvailableERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(280) %4, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2)
  ret i1 %5
}

declare noundef zeroext i1 @_ZNK11xalanc_1_1022XPathEnvSupportDefault17functionAvailableERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(280), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1030XSLTProcessorEnvSupportDefault11extFunctionERNS_21XPathExecutionContextERKNS_14XalanDOMStringES5_PNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS9_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %7) unnamed_addr #1 align 2 !prof !65 {
  %9 = getelementptr inbounds %"class.xalanc_1_10::XSLTProcessorEnvSupportDefault", ptr %1, i64 0, i32 1
  tail call void @_ZNK11xalanc_1_1022XPathEnvSupportDefault11extFunctionERNS_21XPathExecutionContextERKNS_14XalanDOMStringES5_PNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS9_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(280) %9, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %7)
  ret void
}

declare void @_ZNK11xalanc_1_1022XPathEnvSupportDefault11extFunctionERNS_21XPathExecutionContextERKNS_14XalanDOMStringES5_PNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS9_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(280), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1030XSLTProcessorEnvSupportDefault7problemENS_15XPathEnvSupport7eSourceENS1_15eClassificationEPKNS_9XalanNodeEPKNS_19ElemTemplateElementERKNS_14XalanDOMStringEPKtii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(296) %0, i32 %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr nocapture readnone %6, i32 %7, i32 %8) unnamed_addr #1 align 2 !prof !65 {
  %10 = icmp eq i32 %2, 2
  br i1 %10, label %11, label %16

11:                                               ; preds = %9
  %12 = getelementptr inbounds %"class.xalanc_1_10::XSLTProcessorEnvSupportDefault", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds ptr, ptr %14, i64 32
  br label %25

16:                                               ; preds = %9
  %17 = icmp eq i32 %2, 1
  %18 = getelementptr inbounds %"class.xalanc_1_10::XSLTProcessorEnvSupportDefault", ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = load ptr, ptr %19, align 8, !tbaa !44
  br i1 %17, label %21, label %23

21:                                               ; preds = %16
  %22 = getelementptr inbounds ptr, ptr %20, i64 30
  br label %25

23:                                               ; preds = %16
  %24 = getelementptr inbounds ptr, ptr %20, i64 28
  br label %25

25:                                               ; preds = %23, %21, %11
  %26 = phi ptr [ %24, %23 ], [ %22, %21 ], [ %15, %11 ]
  %27 = phi ptr [ %19, %23 ], [ %19, %21 ], [ %13, %11 ]
  %28 = load ptr, ptr %26, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef %3, ptr noundef %4)
  ret i1 %10
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1030XSLTProcessorEnvSupportDefault7problemENS_15XPathEnvSupport7eSourceENS1_15eClassificationEPKNS_14PrefixResolverEPKNS_9XalanNodeERKNS_14XalanDOMStringEPKtii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(296) %0, i32 %1, i32 noundef %2, ptr nocapture readnone %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr nocapture readnone %6, i32 %7, i32 %8) unnamed_addr #1 align 2 !prof !65 {
  %10 = icmp eq i32 %2, 2
  br i1 %10, label %11, label %16

11:                                               ; preds = %9
  %12 = getelementptr inbounds %"class.xalanc_1_10::XSLTProcessorEnvSupportDefault", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds ptr, ptr %14, i64 32
  br label %25

16:                                               ; preds = %9
  %17 = icmp eq i32 %2, 1
  %18 = getelementptr inbounds %"class.xalanc_1_10::XSLTProcessorEnvSupportDefault", ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = load ptr, ptr %19, align 8, !tbaa !44
  br i1 %17, label %21, label %23

21:                                               ; preds = %16
  %22 = getelementptr inbounds ptr, ptr %20, i64 30
  br label %25

23:                                               ; preds = %16
  %24 = getelementptr inbounds ptr, ptr %20, i64 28
  br label %25

25:                                               ; preds = %23, %21, %11
  %26 = phi ptr [ %24, %23 ], [ %22, %21 ], [ %15, %11 ]
  %27 = phi ptr [ %19, %23 ], [ %19, %21 ], [ %13, %11 ]
  %28 = load ptr, ptr %26, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef %4, ptr noundef null)
  ret i1 %10
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010URISupport22getURLStringFromStringERKNS_14XalanDOMStringES3_RS1_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #1 comdat align 2 !prof !65 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !74
  %6 = icmp eq i64 %5, 0
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = select i1 %6, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !74
  %12 = icmp eq i64 %11, 0
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = select i1 %12, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %14
  %16 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %9)
  %17 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %15)
  tail call void @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtjS2_jRNS_14XalanDOMStringE(ptr noundef %9, i32 noundef %16, ptr noundef %15, i32 noundef %17, ptr noundef nonnull align 8 dereferenceable(36) %2)
  ret void
}

declare void @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtjS2_jRNS_14XalanDOMStringE(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1010URISupport16getURLFromStringEPKtRN11xercesc_2_713MemoryManagerE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XalanAutoPtr") align 8, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN11xercesc_2_76XMLURL13buildFullTextEv(ptr noundef nonnull align 8 dereferenceable(81)) local_unnamed_addr #2

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!42}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41}
!35 = !{ptr @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefaultC2ERN11xercesc_2_713MemoryManagerEPNS_13XSLTProcessorE, ptr @_ZN11xalanc_1_1023XSLTProcessorEnvSupportC2Ev, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefaultC2ERN11xercesc_2_713MemoryManagerEPNS_13XSLTProcessorE, ptr @_ZN11xalanc_1_1022XPathEnvSupportDefaultC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefaultD2Ev, ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault5resetEv, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefaultD2Ev, ptr @_ZN11xalanc_1_1022XPathEnvSupportDefaultD1Ev, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefaultD2Ev, ptr @_ZN11xalanc_1_1023XSLTProcessorEnvSupportD2Ev, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefault5resetEv, ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault5resetEv, i64 3}
!41 = !{ptr @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefault17setSourceDocumentERKNS_14XalanDOMStringEPNS_13XalanDocumentE, ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault17setSourceDocumentERKNS_14XalanDOMStringEPNS_13XalanDocumentE, i64 1}
!42 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!43 = !{!"function_entry_count", i64 1}
!44 = !{!45, !45, i64 0}
!45 = !{!"vtable pointer", !46, i64 0}
!46 = !{!"Simple C++ TBAA"}
!47 = !{!"branch_weights", i32 1, i32 0}
!48 = !{!49, !56, i64 288}
!49 = !{!"_ZTSN11xalanc_1_1030XSLTProcessorEnvSupportDefaultE", !50, i64 0, !52, i64 8, !56, i64 288}
!50 = !{!"_ZTSN11xalanc_1_1023XSLTProcessorEnvSupportE", !51, i64 0}
!51 = !{!"_ZTSN11xalanc_1_1015XPathEnvSupportE"}
!52 = !{!"_ZTSN11xalanc_1_1022XPathEnvSupportDefaultE", !51, i64 0, !53, i64 8, !62, i64 144}
!53 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEEE", !54, i64 0, !55, i64 1, !56, i64 8, !58, i64 16, !59, i64 24, !59, i64 32, !60, i64 40, !60, i64 64, !61, i64 88, !59, i64 120, !59, i64 128}
!54 = !{!"_ZTSN11xalanc_1_1021DOMStringHashFunctionE"}
!55 = !{!"_ZTSSt8equal_toIN11xalanc_1_1014XalanDOMStringEE"}
!56 = !{!"any pointer", !57, i64 0}
!57 = !{!"omnipotent char", !46, i64 0}
!58 = !{!"float", !57, i64 0}
!59 = !{!"long", !57, i64 0}
!60 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !56, i64 0, !56, i64 8, !56, i64 16}
!61 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !56, i64 0, !59, i64 8, !59, i64 16, !56, i64 24}
!62 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_EE", !54, i64 0, !55, i64 1, !56, i64 8, !58, i64 16, !59, i64 24, !59, i64 32, !63, i64 40, !63, i64 64, !64, i64 88, !59, i64 120, !59, i64 128}
!63 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEEE", !56, i64 0, !56, i64 8, !56, i64 16}
!64 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEE", !56, i64 0, !59, i64 8, !59, i64 16, !56, i64 24}
!65 = !{!"function_entry_count", i64 0}
!66 = !{!"function_entry_count", i64 3}
!67 = !{!68, !56, i64 0}
!68 = !{!"_ZTSN11xalanc_1_1012XalanAutoPtrIN11xercesc_2_76XMLURLEEE", !56, i64 0}
!69 = !{!70, !56, i64 72}
!70 = !{!"_ZTSN11xercesc_2_76XMLURLE", !56, i64 8, !56, i64 16, !56, i64 24, !56, i64 32, !56, i64 40, !71, i64 48, !72, i64 52, !56, i64 56, !56, i64 64, !56, i64 72, !73, i64 80}
!71 = !{!"int", !57, i64 0}
!72 = !{!"_ZTSN11xercesc_2_76XMLURL9ProtocolsE", !57, i64 0}
!73 = !{!"bool", !57, i64 0}
!74 = !{!75, !59, i64 8}
!75 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !56, i64 0, !59, i64 8, !59, i64 16, !56, i64 24}
!76 = !{!75, !59, i64 16}
!77 = !{!75, !56, i64 24}
!78 = !{!75, !56, i64 0}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZN11xalanc_1_1010URISupport16getURLFromStringERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE: argument 0"}
!81 = distinct !{!81, !"_ZN11xalanc_1_1010URISupport16getURLFromStringERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE"}
